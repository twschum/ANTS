#!/bin/bash

helpstr="Usage: $caen <uniquename> <ssh|mount|unmount> [host]"

# Check runtime arguments
if [[  $# != 2 && $# != 3 ]]; then
	echo $helpstr
	exit
fi


uniquename="$1"
action="$2"
host="login-course"
if [ $# == 3 ]; then
	host="$3"
fi

caendomain="engin.umich.edu"
caenhost="$host.$caendomain"

# This will allow quck access to CAEN ssh or sshfs

#echo -e "\n CAEN Access script by Tim Schumacher "
#echo -e " [1] Access CAEN via ssh "
#echo -e " [2] Mount CAEN directory to ~/"$uniquename
#echo -e " [q] exit "

#read -p "% " in

# Open ssh to CAEN
if [ $action == "ssh" ]; then
	# ssh command to access CAEN
	echo -e "Acessing CAEN login for "$uniquename'@'$caenhost
	ssh -L 5951:localhost:5951 $uniquename'@'$caenhost

# Mount home CAEN dir via sshfs
elif [ $action == "mount" ]; then

	mount_point=$HOME/$uniquename
	# Check to see if the directory exists
	if [ ! -d $mount_point ]; then
		echo "Preparing virtual dir "$mount_point
		mkdir $mount_point
	else
		# check if this directory is empty
		if [ ! "$(ls -A $mount_point)" == "" ]; then
			echo "Directory "$mount_point" not empty, aborting mount..."
			exit
		fi
	fi

	# Open the sshfs connection to that directory
	echo -e "Mounting the home directory from "$uniquename'@'$caenhost" to "$mount_point
	sshfs $uniquename'@'$caenhost: $mount_point

	# Now wait for user to unmount directory
	echo -e "Drive mounted. To unmount:\n caen $uniquename unmount"

# unmount the mounted caen drive
elif [ $action == "unmount" ]; then

	mount_point=$HOME/$uniquename
	if [ -d $mount_point ]; then
		echo Unmounting $mount_point
		fusermount -u $mount_point
		rmdir $mount_point
	else
		echo $mount_point does not exist
	fi

# unknown / incorrect arguments
else
	echo $helpstr
	exit
fi

