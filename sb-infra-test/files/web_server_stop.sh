#!/bin/bash
/usr/bin/docker ps | grep -w "80/tcp" ; RESULT=$? && export NGINX_CONTAINER_ID="$(/usr/bin/docker ps | grep -w "80/tcp" | awk '{print $1}')"
if [ $RESULT == 0 ]; 
then 
/usr/bin/docker stop $NGINX_CONTAINER_ID
else
echo "webserver not started"
fi
