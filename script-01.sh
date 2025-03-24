#!/bin/bash

<< comment

What is variable the input value variable can be changed

if you want to excute shell command you can use $(command)

if you want input from users you can use read in script 

what is arguments 
when we type like this commands
bash script-01.sh sushant rituja

scipt-01.sh wiil be $0 argument
sushant will be $1 argument
rituja will be $2 argument 

comment




name=sushant

echo "My name is $name, and date is $(date)"

echo "Enter your Name :"

read username

echo "Your name is $username"

echo "argument are $0 $1 $2"