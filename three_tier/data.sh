#!/bin/bash
apt update -y
apt install -y httpd.x86_64
systemctl start apache2
systemctl enable apache2
echo "Hello World from $(hostname -f)" > /var/www/html/index.html