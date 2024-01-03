#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
mongo_version=6.0

# List of services to be installed
SERVICES_LIST=(ide preview project data)

# List of Mongo databases to manage
MONGO_DB_LIST=(dontCodeProjects dontCodeDemoProjects dontCodeData dontCodeTestProjects)

# The list of port in the same order than the list of services
PORT_LIST=("$port_ide" "$port_preview" "$port_project" "$port_data")

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
