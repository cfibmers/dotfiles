if [[ ! ":$GOPATH:" == *":$HOME/go:"* ]]; then
    export GOPATH="$HOME/go:$GOPATH"
fi
