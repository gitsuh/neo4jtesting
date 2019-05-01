#!/bin/bash

if [ -z "$1" ]; then
    echo -e "\nPlease supply FQDN '$0 <fqdn> <password>' to run the bootstrap script.\n"
    exit 1
fi

if [ -z "$2" ]; then
    echo -e "\nPlease supply password '$0 <fqdn> <password>' to run the bootstrap script.\n"
    exit 1
fi

echo "HOSTNAME=$1" > .env
echo "PASSWORD=$2" >> .env


sudo docker build -t reverseproxy ./reverseproxy/
sudo docker-compose up -d

