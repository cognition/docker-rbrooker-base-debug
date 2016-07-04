#!/bin/bash
# build scripts to

while getopts :d: opt; do
  case $opt in 
    d) 
        TAG=$OPTARG 
        docker build --no-cache --pull  --rm=true -t rbrooker/base -t rbrooker/base:${TAG} -f Dockerfile.prod .
        ;;
    \?) 
        echo "try again -d TAG ... " 
        ;;
    :)
         docker build -t base -f Dockerfile.debug .
         ;;
     esac
   done


exit 0

