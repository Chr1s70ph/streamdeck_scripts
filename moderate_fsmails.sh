#!/bin/sh

osascript <<EOF
tell application "iTerm2"
    tell current window
        set newTab to (create tab with default profile)
        tell current session of newTab
            write text "ssh -t server-01 'sudo /usr/local/sbin/list_requests -H && echo ✅ All mails moderated; sleep 1'; exit"
        end tell
    end tell
end tell
EOF

