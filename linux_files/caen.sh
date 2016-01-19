#!/bin/bash

# Check runtime argument
if [ ! $# == 1 ]; then
	echo "Usage: $caen <uniquename>"
	exit
fi

# CAEN login access point:
# Dependant on argument1 uniquename
uniquename=$1
caenhost="login-course.engin.umich.edu"

# This will allow quck access to CAEN ssh or sshfs

echo -e "\n CAEN Access script by Tim Schumacher "
echo -e " [1] Access CAEN via ssh "
echo -e " [2] Mount CAEN directory to ~/"$uniquename
echo -e " [q] exit "

read -p "% " in

# Open ssh to CAEN
if [ $in == 1 ]; then
	# ssh command to access CAEN
	echo -e "Acessing CAEN login for "$uniquename'@'$caenhost"\n"
	ssh -L 5951:localhost:5951 $uniquename'@'$caenhost

# Mount home CAEN dir via sshfs
elif [ $in == 2 ]; then

	mount_point=~/$uniquename
	# Check to see if the directory exists
	if [ ! -d $mount_point ]; then
		echo "Preparing virtual dir "$mount_point
		mkdir $mount_point
	#else
		# check if this directory is empty
		#if["$(ls -A $mount_point)"]; then 
		#	echo "Directory "$mount_point" not empty, aborting mount..."
		#	exit
		#fi
	fi

	# Open the sshfs connection to that directory
	echo -e "Mounting the home directory from "$uniquename'@'$caenhost" to "$mount_point
	sshfs $uniquename'@'$caenhost: $mount_point

	# Now wait for user to unmount directory
	echo -e "Drive mounted.  Press [u] then [ENTER] to unmount."
	while true; do
	read -p "% " in
	if [ "$in" == 'u' ];then
		fusermount -u $mount_point
		rmdir $mount_point
		exit
	fi
	done

# quit
elif [ "$in" == 'q' ];then
	exit
fi

