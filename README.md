# TimeMachineScript
This script will give you the completion percentage of a running time machine backup (OS X only), difference since the last update, and average change.

#Installation
copy tmpct.sh to a local directory

run the following command to set it up:

"chmod +x tmpct.sh"

#Usage
./tmpct [sleep time per iteration]

ex. ./tmpct 5

this updates every 5 seconds.

#Output

The new percentage is [total percent completion]

The difference is [difference between now and last iteration]

Average: [average change]

ex.
The new percentage is 7.458

The difference is 0.03337

Average: 1.8645
