#!/bin/bash

ldap_parse_name="ldap-parse"

if [ $1 ]; then
    ldap_parse_name=$1
fi

id=`ps -ef | grep ${ldap_parse_name} | grep -v "grep" | awk '{print $2}'`

if [ "$id" == "" ]
then
    echo "${ldap_parse_name} already stoped!"
else
    pgrep ${ldap_parse_name} | xargs kill -s 9
    echo "stop ${ldap_parse_name} success!"
fi
