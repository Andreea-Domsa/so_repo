#Realizati un shell script care calculeaza suma argumentelor mai mari decat 100 cat si numarul de caractere al argumentelor >100

sum=0
nrcaractere=0
if [ $# -eq 0 ]
then
	echo "Nu au fost transmise argumente."
else
	for i
	do
		if [ $i -gt 100 ]
		then
			sum=$((sum+i))
			#nrcaractere=$((nrcaractere+`echo $i | wc -m`))
			nrcaractere=$((nrcaractere+$(echo $i | wc -m)))
		fi
	done
echo "Suma este: " $sum 
echo "Numarul de caractere" $nrcaractere
fi

