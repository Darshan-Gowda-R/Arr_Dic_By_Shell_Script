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

echo ${arr[@]}

#echo ${comp['a+b*c']}
#echo ${comp['a*b+cx']}
#echo ${comp['c+a/b']}
num=${#arr[@]}
for (( i=1; i< "${#arr[@]}"; i++ ))
do
	for ((j=0 ; j<num-i;j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done

echo "Array in sorted order  : "
echo ${arr[@]}


for ((i=1;i<num;i++))
do
	for((j=0;j<num-i;j++))
	do
		if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
			then
				temp=${arr[$((j+1))]}
				arr[$((j+1))]=${arr[j]}
				arr[j]=$temp
		fi
	done
done

echo "array in sorted in decending order : "
echo ${arr[@]}
