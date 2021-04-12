#!/bin/bash

SECRET_LENGTH=64

createPassword() {
    if [ -n "$1" ]
    then
	cat /dev/urandom | tr -dC '[:graph:]' | head -c$1;echo
    else
	echo 'Usage: '$0' <password length>'
    fi
}

umask 0377
createPassword $SECRET_LENGTH > secrets/managed-nginx-db-pw
createPassword $SECRET_LENGTH > secrets/mysql-root-pw
createPassword $SECRET_LENGTH > secrets/wp1-mysql-pw
createPassword $SECRET_LENGTH > secrets/wp2-mysql-pw

echo enhance security by running: "chown -R root:root secrets"
