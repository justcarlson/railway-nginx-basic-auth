#!/bin/sh

echo "Starting gen_passwd.sh"
echo "USERNAME: ${USERNAME}"
echo "PASSWORD: [REDACTED]"

USER_NAME=${USERNAME}
PASSWD=${PASSWORD}

echo "Generating password for user ${USER_NAME}"

CRYPTPASS=`openssl passwd -apr1 ${PASSWD}`

echo "${USER_NAME}:${CRYPTPASS}" >> /etc/nginx/.htpasswd

echo "Finished generating .htpasswd"
cat /etc/nginx/.htpasswd
