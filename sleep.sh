#!/bin/env bash

# turn off secondary display
/opt/homebrew/bin/m1ddc -v display 2 set standby 4

# turn off main display
/opt/homebrew/bin/m1ddc -v display 1 set standby 4
