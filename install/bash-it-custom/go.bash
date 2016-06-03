if [[ ! ":$GOPATH:" == *":$HOME/go:"* ]]; then
    if [ -z "$GOPATH" ]; then
       export GOPATH="$HOME/go"
    else
        export GOPATH="$HOME/go:$GOPATH"
    fi
fi
