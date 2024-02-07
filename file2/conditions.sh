#!/bin/bash

<< disclaimer
This is just for Education purpose
disclaimer

read -p "Enter girl name:" Girl
read -p "Enter Love %" Love

if [[ $Girl == "Girl" ]];
then
	echo "Boy is loyal"
elif [[ $Love -ge 100 ]]
then
	echo "Boy is Loyal"	
else
	echo "Boy is not loyal"	
fi
