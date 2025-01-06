#!/bin/sh

osascript <<EOF
tell application "iTerm2"
    tell current window
        set newTab to (create tab with default profile)
        tell current session of newTab
            write text "ssh -t 192.168.0.1 'wifi && echo ✅ Wifi restarted; sleep 1'; exit"
        end tell
    end tell
end tell
EOF

