
i=0
while [ $i -lt 5 ]
do
	echo $i
	i=$((i+1))
	#work only with bash, not sh
	#((i=i+1))
	#((i++))
	#((i+=1))
done
