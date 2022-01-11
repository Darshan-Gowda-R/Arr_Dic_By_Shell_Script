#!/bin/bash


abcd(){

echo $(($1 + $2))
}


read -p "Enter the first value: " x
read -p "Enterr the second valure: " y 

abcd x y
