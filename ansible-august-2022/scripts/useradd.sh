#!/bin/bash

# add a user to the system
# add the user to wheel group
# create a directory and give it specific permissions (.ssh / 600 )
# create keys for user

#lets unset some variables
unzet password

#now lets set them as new
var password

# lets create our user
useradd -m -u 1000 -g wheel coolguy

#lets give our user a password
echo $password | passwd coolguy

# ok lets make a .ssh directory for our guy and give it the right rights
mkdir /home/coolguy/.ssh && chmod 600 /home/coolguy/.ssh

#now lets generate some keys for him
user coolguy
penssl genrsa -aes256 -out coolguy 4096 && openssl rsa -in coolguy -out coolguy -pubout

