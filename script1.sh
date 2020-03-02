#!/bin/bash

variable1="exported variable" 
echo $variable1
doStuff(){
	echo "line1"
	echo "line2"
}

doStuff
parametersFunction()
{
	echo "whohoo"
	echo "param:" $1
	echo "param2:" $2
}

echo
parametersFunction Hello world

