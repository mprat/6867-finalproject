#!/bin/bash

while read line
do 
	echo "$line";
	baseurl="http://labelme.csail.mit.edu/Images/users/antonio/static_sun_database";
	subdir=`expr "$line" : '\(/[a-z]/[a-z].*/\)'`;
	# subdir=${subdir:1};
	# echo "$baseurl""$line";
	wget -P images"$subdir" "$baseurl""$line";
	# echo images"$subdir";
done < Partitions/Testing_01.txt