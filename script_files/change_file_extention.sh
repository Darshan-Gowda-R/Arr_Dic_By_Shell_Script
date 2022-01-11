#!/bin/bash -x
date=`date +%d%m%Y`
for files in `ls *log.1` ;
do
	file_name=`echo $files | awk -F. '{print $1}'`;
	ext=.log;
	file_name=$file_name-$date$ext;
	echo ${file_name};
	echo ${files};
	mv $files $file_name;
done

