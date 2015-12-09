# Test if we should support color
if [ -n "$TERM" ]; then
    if [ -t 1 ] && [ $(/usr/bin/tput colors) -ge "8" ]; then
        color_terminal="true"
    else
        case $TERM in
            xterm* | vt100*)
                color_terminal="true"
                ;;
            *)
                ;;
        esac
    fi
fi

# Color man pages
if [ -n "$color_terminal" ]; then
    # mb=begin blinking
    # md=begin bold
    # me=end mode
    # so=begin standout-mode - info box
    # se=end standout-mode
    # us=begin underline
    # ue=end underline
    man() {
        env LESS_TERMCAP_mb=$'\E[1;36m' \
            LESS_TERMCAP_md=$'\E[1;36m' \
            LESS_TERMCAP_me=$'\E[0m' \
            LESS_TERMCAP_se=$'\E[0m' \
            LESS_TERMCAP_so=$'\E[1;47;30m' \
            LESS_TERMCAP_ue=$'\E[0m' \
            LESS_TERMCAP_us=$'\E[4;32m' \
            man "$@"
    }
fi
