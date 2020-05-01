#!/bin/bash

ldap_parse_file_name="./ldap-parse"

ldap_parse="ldap-parse"

if [ $1 ]
then
    ldap_parse_file_name="$1"
fi

id=`ps -ef | grep ${ldap-parse} | grep -v "grep" | awk '{print $2}'`

if [ "$id" == "" ]
then
    nohup ${ldap_parse_file_name} >/dev/null 2>&1 &
    echo "run ${ldap_parse} success!"
else
    echo "${ldap_parse} already is running, the process id is ${id}"
fi
