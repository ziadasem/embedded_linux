#!/bin/bash

#1- List the avaliable shelles
cat /etc/shells

#2- list env variable
env

#3- display current shell
echo $SHELL

#4- what is purpose of \
#"\" "move to new line \ like this "

#5-create alias named printPath
alias printPath='echo $PATH'

printPath

