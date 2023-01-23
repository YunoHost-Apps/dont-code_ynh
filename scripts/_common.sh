#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
java_version=17

mongo_version=4.4

# Java dependencies used by the app will be installed through the Java helper
pkg_dependencies=""

# List of services to be installed
SERVICES_LIST=(ide preview project data)

# List of Mongo databases to manage
MONGO_DB_LIST=(dontCodeProjects dontCodeDemoProjects dontCodeData dontCodeTestProjects)

#=================================================
# PERSONAL HELPERS
#=================================================
append_uri() {
  local return="";
  if [[ $1 == */ ]]; then
    return=$1$2;
  else
    return=$1/$2
  fi
  echo "$return";
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
