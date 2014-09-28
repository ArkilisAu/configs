#!/bin/bash


# update EC2 when it is a new instance
sudo yum update -y

# install
sudo yum groupinstall -y "Web Server" "MySQL Database" "PHP Support"

# install php-myadmin
sudo yum install -y php-mysql

# start apache
sudo service httpd start
sudo chkconfig httpd on

# now you can test your server
echo "You can have a test on your server now!"
