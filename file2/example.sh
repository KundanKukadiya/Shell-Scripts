#!/bin/bash

# This is second file

<< comment
Anything
written
will not be execute
comment

# Variable
name="Kundan"

echo "My name is $name,and today's date is $(date)"

echo "Enter the name:"

read username

echo "You enterd $username"

echo "The characters in TMKOC $0 are : $1 $2"
