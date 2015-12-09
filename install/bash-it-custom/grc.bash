# Try to use grc if the config file exists
if [ -f $(brew --prefix grc)/etc/grc.bashrc ]; then
    . $(brew --prefix grc)/etc/grc.bashrc
    alias dig='colourify dig'
    alias ifconfig='colourify ifconfig'
    alias ps='colourify ps'
fi
