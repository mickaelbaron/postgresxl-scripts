#!/bin/bash

cd /home/postgres
tar xfv download    
cd /home/postgres/postgres-xl-9.5r1.4/ 
./configure
make
make install
ufw disable
echo "PATH='/usr/local/pgsql/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games'" | sudo tee /etc/environment
mkdir -p /home/postgres/.ssh
ssh-keygen -f /home/postgres/.ssh/id_rsa -t rsa -N ''
cat /home/postgres/.ssh/id_rsa.pub | tee -a /home/postgres/.ssh/authorized_keys
