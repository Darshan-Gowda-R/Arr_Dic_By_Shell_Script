#!/bin/bash -x
read -p "Enter 3 numbers : " a b c

echo $a $b $c
declare -A  comp

comp['a+b*c']=$((a+b*c))
comp['a*b+c']=$((a*b+c))
comp['c+a/b']=$((c+a/b))
comp['a%b+c']=$((a%b+c))
arr=()
for key in "${!comp[@]}"
do
	arr+=( ${comp[$key]} )
done

echo "${arr[@]}"

#echo ${comp['a+b*c']}
#echo ${comp['a*b+cx']}
#echo ${comp['c+a/b']}
