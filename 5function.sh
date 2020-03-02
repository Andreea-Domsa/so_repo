doStuff()
{
	echo "line1"
	echo "line2"
	echo "line3"
	echo "line4"
	echo "line5"
}

parametersFunction()
{
	echo "Echoooo!"
	echo "Param: "$1
}

doStuff
echo
parametersFunction Helloooooo

parametersFunction $1
