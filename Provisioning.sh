#!/bin/bash

sudo yum update -y
sudo yum install -y httpd24 php56 mysql php56-mysqlnd
sudo yum install -y amazon-efs-utils
sudo service httpd start
sudo chkconfig httpd on
sudo mkdir -p /var/www/html
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-0e5ba0c6.efs.eu-west-1.amazonaws.com:./ /var/www/html
sudo ls -al /var/www/html

sudo /usr/sbin/httpd -v