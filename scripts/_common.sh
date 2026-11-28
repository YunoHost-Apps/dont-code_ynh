#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

mongo_version=8.0

# List of services to be installed
SERVICES_LIST=(project data)

# List of Mongo databases to manage
MONGO_DB_LIST=(Projects Data)

# The list of ports in the same order as the list of services
PORT_LIST=("$port_project" "$port_data")

# Static web pages are deployed in data_dir (like documents) so that nginx,
# which runs in the www-data group, is able to serve them.
web_dir="${web_dir:-$data_dir/web}"

java_version=25

_java_path() {
    if [[ "$YNH_DEBIAN_VERSION" == "trixie" ]]; then
        echo "/usr/lib/jvm/java-${java_version}-openjdk-amd64/bin/java"
    else
        echo "/usr/lib/jvm/temurin-${java_version}-jre-amd64/bin/java"
    fi
}

ynh_java=$(_java_path)

append_uri() {
    local return=""
    if [[ $1 == */ ]]; then
        return=$1$2
    else
        return=$1/$2
    fi
    echo "$return"
}

app_base_url() {
    local normalized_path="$path"
    if [ "$normalized_path" = "/" ]; then
        normalized_path=""
    fi
    echo "https://${domain}${normalized_path}"
}

deploy_web_files() {
    # Copy the web pages shipped with the source into data_dir and drop the
    # now-unused copy from install_dir. Safe to call repeatedly: the source
    # tree is recreated by ynh_setup_source on every upgrade.
    mkdir -p "$web_dir"
    if [ -d "$install_dir/web" ]; then
        cp -a "$install_dir/web/." "$web_dir/"
        ynh_safe_rm "$install_dir/web"
    fi
    ynh_app_setting_set --key=web_dir --value="$web_dir"
}

patch_web_base_href() {
    # The bundled Angular apps are built with absolute <base href> values
    # ("/", "/apps/host/", "/apps/<plugin>/"). They must point at the app's
    # YunoHost subdir, otherwise assets and client-side routes are resolved
    # from the domain root and the apps never boot.
    # The new value is derived from each index.html location, which makes
    # this idempotent and safe when the app URL changes.
    local base_path="$path"
    [ "$base_path" = "/" ] && base_path=""

    local index_file rel dir new_href
    while IFS= read -r -d '' index_file; do
        rel="${index_file#"$web_dir/"}"
        if [ "$rel" = "dashboard/index.html" ]; then
            # The dashboard is served at the app root.
            new_href="${base_path}/"
        else
            dir="$(dirname "$rel")"
            new_href="${base_path}/${dir}/"
        fi
        sed -i -E "s|<base href=\"[^\"]*\">|<base href=\"${new_href}\">|g" "$index_file"
    done < <(find "$web_dir" -name index.html -type f -print0 2>/dev/null)

    # sed -i can recreate files as root; keep nginx (www-data) access.
    if [ -d "$web_dir" ]; then
        chown -R "$app:www-data" "$web_dir"
        chmod -R o-rwx,gu+rwx "$web_dir"
    fi
}

_install_restart_script_and_sudoers() {
    # Enable restarting of services from ssh
    ynh_config_add --template="restart-services.sh" --destination="$install_dir/restart-services.sh"
    chown "$app:$app" "$install_dir/restart-services.sh"
    chmod o-rwx,gu=rwx "$install_dir/restart-services.sh"

    # Add sudoers file for this specific command
    ynh_config_add --template="dont-code-sudoers" --destination="/etc/sudoers.d/$app-sudoers"
}

_remove_restart_script_and_sudoers() {
    ynh_safe_rm "$install_dir/restart-services.sh"
    if [ -f "/etc/sudoers.d/$app-sudoers" ]; then
        ynh_safe_rm "/etc/sudoers.d/$app-sudoers"
    fi
}

_configure_ssh_access() {
    # Keep authorized_keys and the restart helpers in sync with the public_key
    # setting. Used at install/upgrade time and by scripts/config when the SSH
    # key is changed from the YunoHost config panel.
    local ssh_dir="$install_dir/.ssh"
    local authorized_keys="$ssh_dir/authorized_keys"

    if [ -n "$public_key" ]; then
        mkdir -p "$ssh_dir"
        ynh_backup_if_checksum_is_different "$authorized_keys"
        touch "$authorized_keys"
        chmod 600 "$authorized_keys"
        printf '%s\n' "$public_key" > "$authorized_keys"
        ynh_store_file_checksum "$authorized_keys"
        chown -R "$app:$app" "$ssh_dir"
        chmod 700 "$ssh_dir"
        _install_restart_script_and_sudoers
    else
        ynh_safe_rm "$authorized_keys"
        _remove_restart_script_and_sudoers
    fi
}

_install_java() {
    local debian_release=$YNH_DEBIAN_VERSION

    if [[ "$debian_release" == "bookworm" ]]; then
        ynh_apt_install_dependencies_from_extra_repository \
            --repo="deb https://packages.adoptium.net/artifactory/deb bookworm main" \
            --package="temurin-25-jre" \
            --key="https://packages.adoptium.net/artifactory/api/gpg/key/public"
    else
        ynh_apt_install_dependencies "openjdk-25-jre"
    fi
}

render_dashboard_config() {
    local base_url
    base_url="$(app_base_url)"

    mkdir -p "$web_dir/dashboard/assets/config"
    cat > "$web_dir/dashboard/assets/config/default.json" <<EOF
{
  "name": "Dont-code",
  "description": "Dont-code platform managed by YunoHost.",
  "projectApiUrl": "${base_url}/api/project",
  "generateApiUrl": "${base_url}/api/generate",
  "applicationHostUrl": "${base_url}/apps/host/?repository=default&"
}
EOF
}

render_host_config() {
    local base_url
    base_url="$(app_base_url)"

    mkdir -p "$web_dir/apps/host/assets/config"
    cat > "$web_dir/apps/host/assets/config/default.json" <<EOF
{
  "name": "Dont-code",
  "description": "Dont-code host managed by YunoHost.",
  "projectApiUrl": "${base_url}/api/project",
  "storeApiUrl": "${base_url}/api/data",
  "documentApiUrl": "${base_url}/api/documents",
  "plugins": [
    {
      "id": "Web",
      "display-name": "Web plugin",
      "version": "1.0.0",
      "info": { "remote-entry": "${base_url}/apps/web-plugin/remoteEntry.json" },
      "config": {}
    },
    {
      "id": "International",
      "display-name": "International plugin",
      "version": "1.0.0",
      "info": { "remote-entry": "${base_url}/apps/intl-plugin/remoteEntry.json" },
      "config": {}
    },
    {
      "id": "Finance",
      "display-name": "Finance plugin",
      "version": "1.0.0",
      "info": { "remote-entry": "${base_url}/apps/finance-plugin/remoteEntry.json" },
      "config": {}
    },
    {
      "id": "Agenda",
      "display-name": "Agenda plugin",
      "version": "1.0.0",
      "info": { "remote-entry": "${base_url}/apps/agenda-plugin/remoteEntry.json" },
      "config": {}
    },
    {
      "id": "Editor",
      "display-name": "Editor plugin",
      "version": "1.0.0",
      "info": { "remote-entry": "${base_url}/apps/editor-plugin/remoteEntry.json" },
      "config": {}
    },
    {
      "id": "Default",
      "display-name": "Default plugin",
      "version": "1.0.0",
      "info": { "remote-entry": "${base_url}/apps/default-plugin/remoteEntry.json" },
      "config": {}
    },
    {
      "id": "Workflow",
      "display-name": "Workflow plugin",
      "version": "1.0.0",
      "info": { "remote-entry": "${base_url}/apps/workflow-plugin/remoteEntry.json" },
      "config": {}
    }
  ]
}
EOF
}
