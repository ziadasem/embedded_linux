#/bin/bash

group_val="$(grep FamilyName: /etc/group)"
create_user(){
	#check
	uname_val="$(grep yourName: /etc/passwd)"
	if [ -z "${uname_val}" ]
	then
		useradd -g FamilyName yourName
	fi
	unset uname_val
}

if [ -z "${group_val}" ]
then #No group exists
	groupadd FamilyName
	#check if user exists
	create_user
	usermod -aG FamilyName yourName
	unset group_val
else
	usermod -aG FamilyName yourName
fi

echo "Details of group"
cat /etc/group | grep FamilyName:
echo "Details of user"
cat /etc/passwd | grep yourName:


