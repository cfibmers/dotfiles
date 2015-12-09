
if [ ! -d /Applications/ShiftIt.app ]; then
    curl -L -o ~/Downloads/ShiftIt.zip https://raw.github.com/onsi/ShiftIt/master/ShiftIt.zip
    unzip -d /Applications ~/Downloads/ShiftIt.zip && rm ~/Downloads/ShiftIt.zip
fi

open /Applications/ShiftIt.app

sleep 3

sudo sqlite3 "/Library/Application Support/com.apple.TCC/TCC.db" 'UPDATE access SET allowed = 1 WHERE client = "org.shiftitapp.ShiftIt";'
