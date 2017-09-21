# TimeMachineScript
This script will give you the completion percentage of a running time machine backup (OS X only), difference since the last update, and average change.

It creates a folder called tmscript where it stores logs which it uses for calculations

#Installation
copy tmpct.sh to a local directory. Make sure tmutil is running by typing "tmutil status"

run the following command to set it up:

"chmod +x tmpct.sh"

#Usage
./tmpct [sleep time between iterations] KB|MB

ex. ./tmpct 5 MB

this updates every 5 seconds and uses Megabytes as the units. (KB will use Kilobytes).

#A note from the author
If this script has helped you, please consider donating. My Bitcoin address is:
1EqMpMfvRir7rquyHCgMUSXkZifPuLz6Et

I'm a 24 year old professional just out of college who is saving to buy a home, with the intention of turning it into cat heaven. I love cats and actively volunteer at BARCS in Baltimore. You can see my YouTube channel here:
https://www.youtube.com/channel/UCxq91FzrkZYaFB7t7XlPczQ

#Output

```
kgor93@KylesMBP:~/scripts$ ./tmpct.sh 2 KB
The time between runs is 2 seconds
Total number of iterations is 1 and the time between is 2 seconds.
cat: ./tmscript/tm.txt: No such file or directory
cat: ./tmscript/mb.txt: No such file or directory
The new percentage is 3.61982
-----------------

Total number of iterations is 1 and the time between is 2 seconds.
The new percentage is 3.71173
The difference is 0.09191
Average Difference: 0.09191
New KBs transferred:  20520
Total KBs transferred:  1823132
Avg KB transferred b/w runs: 20520
-----------------

Total number of iterations is 2 and the time between is 2 seconds.
The new percentage is 3.76604
The difference is 0.05431
Average Difference: 0.07311
New KBs transferred:  26676
Total KBs transferred:  1849808
Avg KB transferred b/w runs: 23598
-----------------

Total number of iterations is 3 and the time between is 2 seconds.
The new percentage is 3.91226
The difference is 0.14622
Average Difference: 0.09748
New KBs transferred:  71820
Total KBs transferred:  1921628
Avg KB transferred b/w runs: 39672
-----------------

Total number of iterations is 4 and the time between is 2 seconds.
The new percentage is 4.0919
The difference is 0.17964
Average Difference: 0.11802
New KBs transferred:  88236
Total KBs transferred:  2009864
Avg KB transferred b/w runs: 51813
-----------------

Total number of iterations is 5 and the time between is 2 seconds.
The new percentage is 4.20887
The difference is 0.11697
Average Difference: 0.11781
New KBs transferred:  57456
Total KBs transferred:  2067320
Avg KB transferred b/w runs: 52941.6
-----------------

Total number of iterations is 6 and the time between is 2 seconds.
The new percentage is 4.25483
The difference is 0.04596
Average Difference: 0.105835
New KBs transferred:  22572
Total KBs transferred:  2089892
Avg KB transferred b/w runs: 47880
-----------------

Total number of iterations is 7 and the time between is 2 seconds.
The new percentage is 4.29243
The difference is 0.0376
Average Difference: 0.0960871
New KBs transferred:  18468
Total KBs transferred:  2108360
Avg KB transferred b/w runs: 43678.3
-----------------

```

Also

```
^Ckgor93@KylesMBP:~/scripts$ ./tmpct.sh 5 MB
The time between runs is 5 seconds
Total number of iterations is 1 and the time between is 5 seconds.
cat: ./tmscript/tm.txt: No such file or directory
cat: ./tmscript/mb.txt: No such file or directory
The new percentage is 5.4956
-----------------

Total number of iterations is 1 and the time between is 5 seconds.
The new percentage is 5.6084
The difference is 0.1128
Average Difference: 0.1128
New MBs transferred:  54
Total MBs transferred:  2690
Avg MB transferred b/w runs: 54
-----------------

Total number of iterations is 2 and the time between is 5 seconds.
The new percentage is 5.79222
The difference is 0.18382
Average Difference: 0.14831
New MBs transferred:  88
Total MBs transferred:  2778
Avg MB transferred b/w runs: 71
-----------------

Total number of iterations is 3 and the time between is 5 seconds.
The new percentage is 6.08048
The difference is 0.28826
Average Difference: 0.19496
New MBs transferred:  138
Total MBs transferred:  2916
Avg MB transferred b/w runs: 93.3333
-----------------

Total number of iterations is 4 and the time between is 5 seconds.
The new percentage is 6.10136
The difference is 0.02088
Average Difference: 0.15144
New MBs transferred:  22
Total MBs transferred:  2926
Avg MB transferred b/w runs: 75.5
-----------------

Total number of iterations is 5 and the time between is 5 seconds.
The new percentage is 6.34782
The difference is 0.24646
Average Difference: 0.170444
New MBs transferred:  106
Total MBs transferred:  3044
Avg MB transferred b/w runs: 81.6
-----------------

Total number of iterations is 6 and the time between is 5 seconds.
The new percentage is 6.48569
The difference is 0.13787
Average Difference: 0.165015
New MBs transferred:  75
Total MBs transferred:  3110
Avg MB transferred b/w runs: 80.5
-----------------

Total number of iterations is 7 and the time between is 5 seconds.
The new percentage is 6.75504
The difference is 0.26935
Average Difference: 0.17992
New MBs transferred:  121
Total MBs transferred:  3240
Avg MB transferred b/w runs: 86.2857
-----------------

Total number of iterations is 8 and the time between is 5 seconds.
The new percentage is 6.93885
The difference is 0.18381
Average Difference: 0.180406
New MBs transferred:  122
Total MBs transferred:  3362
Avg MB transferred b/w runs: 90.75
-----------------

Total number of iterations is 9 and the time between is 5 seconds.
The new percentage is 7.29396
The difference is 0.35511
Average Difference: 0.199818
New MBs transferred:  136
Total MBs transferred:  3498
Avg MB transferred b/w runs: 95.7778
-----------------

Total number of iterations is 10 and the time between is 5 seconds.
The new percentage is 7.57804
The difference is 0.28408
Average Difference: 0.208244
New MBs transferred:  136
Total MBs transferred:  3634
Avg MB transferred b/w runs: 99.8
-----------------

```
