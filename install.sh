#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
scriptdir="scripts"
bindir="$HOME/bin"
filter="$^"  # matches nothing
if [ -z "$(grep ARM /proc/cpuinfo)" ]; then
	# avoids scripts designed for the Raspberry Pi
	filter="rpi-"
fi

echo "This script should be run from the directory where it resides."

echo "This script will overwrite the following files (if they exist):"
for file in $(ls $scriptdir | grep -v "$filter" | grep -v "*.vbs"); do
	if [ -e "$bindir/$file" ]; then
		echo -n "*"
	fi
	echo -e "\t$bindir/$file"
done

while true; do
read -p "Do you wish to install this program? [y/n]:" yn
	case $yn in
		[Yy]* ) break;;
		[Nn]* ) echo "not installing, exiting ..."; exit;;
		* ) echo "Please answer yes or no.";;
	esac
done

echo "Installing ..."
for file in $(ls $scriptdir | grep -v "$filter" | grep -v ".vbs"); do
	rm -f "$bindir/$file"
	ln -s "$DIR/$scriptdir/$file" "$bindir/$file"
done
