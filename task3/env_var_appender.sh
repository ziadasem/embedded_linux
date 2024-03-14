#!/bin/bash
host_name=$HOSTNAME
if [ $# -eq 1 ]
then
	host_name=$1
else
	echo "Enter user name"
	read host_name
fi
if test -f /home/ziad/.bashrc
then
	echo "HELLO=$host_name" >> /home/ziad/.bashrc
	local=whoami
	echo "LOCAL=$local" >> /home/ziad/.bashrc
fi

gnome-terminal


