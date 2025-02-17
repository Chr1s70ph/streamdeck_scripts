#!/bin/sh

# turn off main display
m1ddc -v display 1 set standby 4

# turn off secondary display
m1ddc -v display 2 set standby 4

# Sets the mac to sleep
pmset displaysleepnow
