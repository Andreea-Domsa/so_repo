#awk <params> '<conditions> { <actions> }' <file name>

awk '{ print $0 }' testData/datafile

awk '{ print $2, $5 }' testData/datafile

ls -l | awk '{ print $9 }'

