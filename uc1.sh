#!/bin/bash -x
read -p "Enter 3 numbers : " a b c

echo $a $b $c
declare -A  comp

comp['a+b*c']=$((a+b*c))

echo ${comp['a+b*c']}
