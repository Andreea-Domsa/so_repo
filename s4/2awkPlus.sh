awk '$5>100 { print $0 }' testData/datafile

awk '$5>100 { print $1,$4 }' testData/datafile

#multiple conditions - || or &&
awk '$5>100 && $5<500 { print $0 }' testData/datafile

#use shell variables in conditions
#syntax: awk -v <awk var name>="$<shell var name>" '[...]'

upperLimit=500
lowerLimit=100

awk -v awkVar="$upperLimit" '$5<awkVar {print $0}' testData/datafile

awk -v awkVarUpper="$upperLimit" -v awkVarLower="$lowerLimit" '$5>awkVarLower && $5<awkVarUpper {print $0}' testData/datafile

awk -F : '{print $3}' testData/awk.txt
