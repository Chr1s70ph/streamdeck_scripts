#!/bin/sh

osascript <<EOF
tell application "iTerm2"
    tell current window
        set newTab to (create tab with default profile)
        tell current session of newTab
            write text "brew update && brew upgrade && brew cleanup; exit"
        end tell
    end tell
end tell
EOF

