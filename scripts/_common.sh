#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

mongo_version=7.0

# List of services to be installed
SERVICES_LIST=(ide preview project data)

# List of Mongo databases to manage
MONGO_DB_LIST=(Projects Data)

# The list of port in the same order than the list of services
PORT_LIST=("$port_ide" "$port_preview" "$port_project" "$port_data")

java_version=17
ynh_java="/usr/lib/jvm/java-${java_version}-openjdk-amd64/bin/java"

append_uri() {
    local return="";
    if [[ $1 == */ ]]; then
        return=$1$2;
    else
        return=$1/$2
    fi
    echo "$return";
}

_install_restart_script_and_sudoers() {
    # Enable restarting of services from ssh
    ynh_config_add --template="restart-services.sh" --destination="$install_dir/restart-services.sh"
    chown "$app:$app" "$install_dir/restart-services.sh"
    chmod o-rwx,gu=rwx "$install_dir/restart-services.sh"

    # Add sudoers file for this specific command
    ynh_config_add --template="dont-code-sudoers" --destination="/etc/sudoers.d/$app-sudoers"
    #REMOVEME? Assuming the file is setup using ynh_config_add, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chown root:root "/etc/sudoers.d/$app-sudoers"
    #REMOVEME? Assuming the file is setup using ynh_config_add, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chmod o-rwx,gu=r "/etc/sudoers.d/$app-sudoers"
}

_remove_restart_script_and_sudoers() {
    if [ -f "/etc/sudoers.d/$app-sudoers" ]; then
        ynh_safe_rm "/etc/sudoers.d/$app-sudoers"
    fi
}
