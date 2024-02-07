#!/bin/bash

num=0

while [[ $num%2==0 && $num -le 10 ]]
do
	echo "Hello"
	num=$((num + 2))
done	

