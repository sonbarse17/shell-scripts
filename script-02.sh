#!/bin/bash

<<comment 
This script is for creating users 

comment


read -p "Enter user Name : " name

echo "you have entered $name "

sudo useradd -m $name 

echo "$name user created !"