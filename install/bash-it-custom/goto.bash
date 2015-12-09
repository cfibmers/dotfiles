# Find a project in the gopath
goto() {
    local p
    local f
    
    for p in `echo $GOPATH | tr ':' '\n'`; do
        f=`find ${p}/src -type d | grep ${1} | awk '{ print length, $0 }' | sort -n | cut -d" " -f2- | head -n 1`
        if [ -n "$f" ]; then
            cd $f
            return 
        fi
    done
}
