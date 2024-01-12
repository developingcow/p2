#!/bin/bash
export HOME=/home/ubuntu # not set on default

sudo apt update
sudo apt install -y mysql-server
sudo systemctl start mysql.service

# change mysql to listen on all interfaces (0.0.0.0) and restart
sudo sed -i 's/^bind-address\s*=\s*127\.0\.0\.1/bind-address = 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql
