mkdir -p tmscript
touch ./tmscript/avg.txt
cat ./tmscript/tm.txt > ./tmscript/old.txt
tmutil status | awk '/_raw_Percent/ {print $3}' | grep -o '[0-9].[0-9]\+' | awk '{print $1*100}' > ./tmscript/tm.txt
printf "The new percentage is " 
cat ./tmscript/tm.txt
printf "The difference is "
paste ./tmscript/tm.txt ./tmscript/old.txt | awk '{print $1 - $2}' >> ./tmscript/avg.txt
tail -1 ./tmscript/avg.txt
awk '{s+=$1} END {print "Average: " s/NR}' ./tmscript/avg.txt
echo "-----------------"
sleep $1
exec ./tmpct.sh $1
