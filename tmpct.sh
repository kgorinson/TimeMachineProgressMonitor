mkdir -p tmscript
touch ./tmscript/avg.txt
touch ./tmscript/avgmb.txt

cat ./tmscript/tm.txt > ./tmscript/old.txt
cat ./tmscript/mb.txt > ./tmscript/mbold.txt

echo "The time between runs is $1 seconds"
printf "Total number of iterations is "
wc -l tmscript/avg.txt | awk '{print $1}'
tmutil status | awk '/_raw_Percent/ {print $3}' | grep -o '[0-9].[0-9]\+' | awk '{print $1*100}' > ./tmscript/tm.txt
printf "\nThe new percentage is " 
cat ./tmscript/tm.txt

printf "The difference is "
paste ./tmscript/tm.txt ./tmscript/old.txt | awk '{print $1 - $2}' >> ./tmscript/avg.txt
tail -1 ./tmscript/avg.txt
awk '{s+=$1} END {print "Average: " s/NR}' ./tmscript/avg.txt

printf "\nTotal KBs transferred: "
tmutil status | grep bytes | awk '{print $3}' | sed 's/.$//'> ./tmscript/bytes.txt && echo "$(cat ./tmscript/bytes.txt)/1024" | bc

printf "New KBs transferred: "
tmutil status | grep bytes | awk '{print $3}' | sed 's/.$//'> ./tmscript/bytes.txt && echo "$(cat ./tmscript/bytes.txt)/1024" | bc > ./tmscript/mb.txt
paste ./tmscript/mb.txt ./tmscript/mbold.txt | awk '{print $1 - $2}' >> ./tmscript/avgmb.txt
tail -1 ./tmscript/avgmb.txt
awk '{s+=$1} END {print "Avg KB transferred b/w runs: " s/NR}' ./tmscript/avgmb.txt

if [ "$2" == "yes" ] ; then
	sed -i '.bak' '/.*/d' tmscript/avg.txt
	sed -i '.bak' '/.*/d' tmscript/avgmb.txt
	echo "The first line has been deleted"
	echo "In the averages files"
fi
echo "-----------------"
sleep $1
exec ./tmpct.sh $1
