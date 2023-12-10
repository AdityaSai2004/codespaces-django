#!/bin/bash

# Install MySQL
sudo apt update
sudo apt install mysql-server -y

sudo service mysql restart  
sleep 15

# Configure MySQL 
# sudo mysql <<EOF
# CREATE DATABASE mydatabase;
# CREATE USER 'myuser'@'localhost' IDENTIFIED BY 'password';
# GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'localhost';
mysql -e "CREATE DATABASE IF NOT EXISTS your_database_name;"
mysql -e "CREATE USER 'your_database_user'@'%' IDENTIFIED BY 'your_database_password';"
mysql -e "GRANT ALL PRIVILEGES ON your_database_name.* TO 'your_database_user'@'%';"
echo "Database 'your_database_name' created with user 'your_database_user' and password 'your_database_password'."
