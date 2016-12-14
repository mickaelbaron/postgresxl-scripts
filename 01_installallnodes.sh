#!/bin/bash

useradd postgres --shell /bin/bash --home /home/postgres --create-home
echo -e 'postgres\npostgres\n' | sudo passwd postgres
adduser postgres sudo
chsh -s /bin/bash postgres
apt-get update -y
apt-get install software-properties-common python-software-properties -y 
apt-get install wget zip gcc libreadline6 libreadline6-dev zlib1g-dev build-essential flex -y
cd /home/postgres
wget https://sourceforge.net/projects/postgres-xl/files/latest/download

