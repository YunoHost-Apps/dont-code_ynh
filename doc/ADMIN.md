* This application is installing services and mongo databases on top of Yunohost services
    * They are not integrated with yunohost sso or LDAP: Any client application can call the installed services
    * etc...

* After installation of these services
    * You must change the configuration of the Builder and Previewer to point to these services.
    * You can update the services themselves by configuring a proper ssh public key when installing the app. You'll then be able to upload the .jar files
