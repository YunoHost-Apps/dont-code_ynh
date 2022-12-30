#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
java_version=17

# Java dependencies used by the app will be installed through the Java helper
pkg_dependencies=""

# List of services to be installed
SERVICES_LIST=(ide preview project data)

# List of Mongo databases to manage
MONGO_DB_LIST=(dontCodeProjects dontCodeDemoProjects dontCodeData)

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
