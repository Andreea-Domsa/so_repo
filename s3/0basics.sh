#Facilitati ale interpretoarelor de comenzi
#A. Expandarea numelor de cale
cp test1/* test2
cp test1/?1* test3
ls te[sm]*
#B.Redirectarea iesirii si a intrarii
cat file1 file2 > newfile
cat file1 file2 >> newfile
wc -w < /etc/passwd
#C.Pipes sau conectarea proceselor
ls test1 | wc -l
#D.Controlul proceselor
while true
do	
	echo "a"
	sleep 2
done
#intreruperea executiei unui proces
ctrl-z
#care sunt procesele suspendate
jobs
#reluarea executiei ultimului proces
fg 
#ultimele comenzi
history 

#Sintaxa interpretorului de comenzi

#A.Variabile
$HOME
$SHELL
#Numele scriptului
$0
#Parametri pozitionali
$1
#Numarul de parametri
$#
#Lista parametrilor
$*
#Calcul aritmetic
i=0
i=$((i+2))
echo $i
#B.Structuri de control
#C.Functii
