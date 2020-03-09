grep ^data testData/lsResult

grep sh$ testData/lsResult

grep ^dummy$ testData/lsResult

grep ^.....$ testData/lsResult

grep .sh testData/lsResult

grep '\.'sh testData/lsResult
grep \\.sh testData/lsResult
grep "\."sh testData/lsResult

grep '\.'sh$ testData/lsResult
grep "\."sh$ testData/lsResult
grep \\.sh$ testData/lsResult

grep ^[0-9] testData/lsResult
grep ^[a-m] testData/lsResult

if [[ $digit =~ [0-9] ]]; then
    echo "$digit is a digit"
else
    echo "oops"
fi