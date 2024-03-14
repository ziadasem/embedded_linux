#!/bin/bash
#1- create dir
mkdir newDir
#2- add sticky bit
chmod o+t newDir

cd newDir
touch ziads_file
#3- create user accounts
#created
#sudo adduser te_user

#4- switch user to te_user
su te_user
touch te_file

#5-te_user will edit ziads_file
mv my_file ziads_file

su ziad


