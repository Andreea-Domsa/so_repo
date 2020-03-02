#Realizati un meniu avand o optiune de exit,2 optiuni obisnuite care doar afiseaza un mesaj si o optiune default.

i=1
while [ $i -ne 0 ]
do
	echo "Press enter to continue..."

	read dummy

	clear
	echo "0 - Exit"
	echo "1 - Something"
	echo "2 - Something else"
	echo "Anything else - Feeling lucky?"
	
	read i

	case $i in
		0) break;;
		1) echo "Option 1";;
		2) echo "Option 2";;
		*) echo "Wrong";;
	esac
done
echo "End of menu demo"
