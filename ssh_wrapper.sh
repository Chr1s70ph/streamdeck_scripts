#!/bin/sh

HOST=$1
COMMAND=$2

osascript <<EOF
tell application "iTerm2"
    tell current window
        set newTab to (create tab with default profile)
        tell current session of newTab
            write text "if ! ssh-add -l >/dev/null 2>&1; then echo 'No SSH keys found in agent. Loading keys...'; load-ssh-keys; fi; ssh -t $HOST '$COMMAND'; sleep 1; exit"
        end tell
    end tell
end tell
EOF

