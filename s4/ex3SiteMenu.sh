j=1

echo "Nume fisier..."
read numeFisier

while [ $j -ne 0 ]
do
	echo "Press enter to continue..."
	read dummy
	clear
	echo "0 - Exit"
	echo "1 - Months - Lunile pentru care exista loguri"
	echo "2 - Days - Pentru o luna citita de la tastatura, zilele in care apar loguri"
	echo "3 - Hours - Pentru o zi citita de la tastatura, orele la care apar loguri"
	echo "4 - Lines - Pentru o luna, zi si ora citite de la tastatura"
	echo "5 - Count Lines - Afisarea numarului de linii din fisier"
	echo "6 - Search Text - Afisarea linilor ce contin un text introdus de la tastatura"
	echo "Anything else - Feeling lucky?"
	read i
	case $i in
		0) break;;
		1) cat $numeFisier | awk '{print $1}' | uniq;;
		2) echo "Luna?";
			read luna;
			cat $numeFisier | awk -v awkV="$luna" '$1==awkV {print $2}' | uniq;;
		3) echo "Zi?";
			read zi;
			cat $numeFisier | awk -v awkV="$zi" '$2==awkV {print $3}' | uniq;;
		4) echo "Luna?";
			read luna;
			echo "Zi?";
			read zi;
			echo "Ora?";
			read ora;
         cat $numeFisier | awk -v awkV="$luna" -v awkVzi="$zi" -v awkVora="$ora" '$1==awkV && $2==awkVzi && $3==awkVora {print $0}' | uniq;;

		5) nrLinii=`wc -l < $numeFisier`;
		#nrLinii=$(wc -l < $numeFisier);
			echo "Numarul de linii din fisier este: " $nrLinii;;			
		6) echo "Pattern?";
			read pattern;
			cat $numeFisier | grep $pattern;; 
		*) echo "Wrong";;
	esac
done
echo "End of menu demo"
