* This application installs the full Dont-code suite on YunoHost:
  * Dashboard and application host static web apps.
  * Bundled plugins (default, intl, web, finance, agenda, editor, workflow).
  * Project and data Quarkus services.
  * MongoDB databases for projects and data.
* The services are not integrated with YunoHost SSO or LDAP.
* After installation, open the app URL to access the dashboard. The dashboard and host are configured automatically for the installed domain/path.
* Optional: set a Mistral API key during install to enable AI generation features supported by project-services.
* Optional: set an SSH public key during install to allow maintenance access (restart script/sudoers as configured by the package).
