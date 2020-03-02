:'
Realizati o functie care sa fie apelata recursiv si sa numere descrescator de la un numar primit ca si parametru. 
Cand ajunge la 1 se va afisa un mesaj.
'
countdown()
{
	if [ $1 -gt 1 ]
	then
		echo $1
		countdown $(($1-1))
	else
		echo "111111111111111!"
	fi
}

countdown 5
