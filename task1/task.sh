#!/bin/bash

cd /home
if [ "$#" -eq 4 ] #Arguments Mode
then
	mkdir $1
	cd $1;
	mkdir $2;
	cd $2
	touch $3;

	#Move notepaper
	cp $3 ../

	#Renaming
	#echo "Please enter the name of the new file"
	#read newName
	var1=$3
	var2=$4
	mv "../$var1" "../$var2"
else #User insertion mode
	echo "enter dir name"
	read var1
	mkdir $var1
	cd $var1;
	
	echo "enter dir2 name"
	read var2
	mkdir $var2;
	cd $var2

	echo "Enter notebook name"
	read var3	
	touch $var3;
	cp $var3 ../
	
	echo "Please enter the name of the new file"
	read newName
	mv "../$var3" "../$newName"
fi

echo "Done"
exit

