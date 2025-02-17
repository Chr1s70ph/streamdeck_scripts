#!/bin/sh

# turn off secondary display
m1ddc -v display 2 set standby 4

# have to sleep, because ddc takes some time
# and I don't want to put more energy into making this better
sleep 2

# turn off main display
m1ddc -v display 1 set standby 4
