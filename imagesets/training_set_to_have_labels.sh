#!/bin/bash

counter=-1;
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
	echo "$line" "$counter" >> Training_02_with_labels_0_start.txt;

done < Training_02.txt