# TimeMachineScript
This script will give you the completion percentage of a running time machine backup (OS X only), difference since the last update, and average change.

#Installation
copy tmpct.sh to a local directory. Make sure tmutil is running by typing "tmutil status"

run the following command to set it up:

"chmod +x tmpct.sh"

#Usage
./tmpct [sleep time per iteration][yes/no to replacing first avg.txt entry with 0.00]

ex. ./tmpct 5 yes

this updates every 5 seconds.

The part about replacing the first average entry is because the program will have the overall percent change as the first entry (i.e. 22.00 for 22%), and this screws up the average calculation.

#Output

The new percentage is [total percent completion]

The difference is [difference between now and last iteration]

Average: [average change]

MBs transferred: [mb]

ex.
The new percentage is 7.458

The difference is 0.03337

Average: 1.8645

MBs transferred: 12800
