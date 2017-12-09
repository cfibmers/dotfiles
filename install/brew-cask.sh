apps=(
    atom
    docker
    flycut
    font-hack
    font-inconsolata-dz-for-powerline
    google-chrome
    iterm2
    macvim
    minikube
    ngrok
    vagrant
    virtualbox
)

brew cask install --appdir="/Applications" "${apps[@]}"

# # Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r
