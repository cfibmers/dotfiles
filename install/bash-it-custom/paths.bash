if [[ ! ":$PATH:" == *":$HOME/bin:"* ]]; then
    export PATH="$HOME/bin:$PATH"
fi

if [[ ! ":$PATH:" == *":/usr/local/sbin:"* ]]; then
    export PATH="$PATH:/usr/local/sbin"
fi
