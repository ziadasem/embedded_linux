#!/bin/bash
touch oldpasswd
sudo chmod u+rw oldpasswd
chmod g+rx oldpasswd
chmod o+x oldpasswd


#another way
chmod 651 oldpasswd

#2-change default permission
umask 0046

#3- default permissions
echo "Default file permissions 666 and directory 777"

#4- block any use
umask 777

#5- no access at at
ls -ll

#6- file with 666
touch file 
chmod 444 file


#7 - x in dir and file
echo "X in file is for executing/running while X in dir is to execute any command on it"

