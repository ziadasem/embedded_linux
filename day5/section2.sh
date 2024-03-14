#/bin/bash
#1- create secondary group with name pgroup abd gID 30000
#from man groupadd
groupadd -g 30000 pgroup

#2- Lock an account
useradd test_user

passwd -l test_user

#3- Delete an account
echo "3- Delete Account"
useradd test_user2
cat /etc/passwd | grep test_user2:
echo "now for deleting"
userdel -r test_user2

#4- delete group account
echo "4- deleting group"
groupadd test_group 
cat /etc/group | grep test_group
echo "Delete this group"
groupdel test_group

#5- useradd vs adduser
echo "5- useradd vs adduser"
echo "From Search and expirement useradd is a low level utility that adds user only without setting password or any other info, unlike \n \
	adduser which is a high level utility that accepts more options and create /home/ system"

