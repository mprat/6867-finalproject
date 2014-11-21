#!/bin/bash

counter=0;
prevcatname="";

while read line
do 
	echo "$line";
	subdir=`expr "$line" : '\(/[a-z]/[a-z].*/\)'`;
	catname=${subdir:3};
	echo "$catname";
	if [ "$prevcatname" != "$catname" ] 
	then
		(( counter+= 1 ));
		prevcatname="$catname";
		# echo "$counter";
	fi

	# add the label to the text file
	echo "$line" "$counter" >> Training_01_with_labels.txt;

done < Training_01.txt