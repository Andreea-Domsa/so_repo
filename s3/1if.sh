# if [ condition ]
# if test condition

if [ -z $1 ]
	then echo "param 1 is empty!"
elif [ -e $1 ]
	then echo "the file at param 1 exists!"
else
	echo "default!"
fi

