#!/bin/bash -x

str=log.1

for file1 in `ls *.log`;
do
	#file_name=$file1;
	#echo $file1;
	file_name=`echo $file1 | awk -F- '{print $1}'`;
	echo $file_name;
	file_nam=$file_name"."$str;
	echo $file_nam;
	mv $file1 $file_nam
done
