#Sa se afiseze numele tuturor fisierelor si tuturor directoarelor dintr-un director primit ca si argument in linia de comanda. (cu recursivitate)

recursiva()
{
	for i in $(ls $1)
	do
		if test -d "$1/$i"
			then 
				echo "$1/$i" "-this is a directory" 
				recursiva "$1/$i"
		elif test -f "$1/$i"
			then 	
				echo "$1/$i" "-this is a file"
		fi
	done
}

if test $# -lt 1 || test ! -d $1 
	then echo "Argument invalid. Argumentul trebuie sa fie un director"
	exit
fi

recursiva $1
