launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
sleep 5
createuser postgres -d -l -s
