apps=(
    atom
    # colloquy
    consul
    dockertoolbox
    eclipse-java
    flycut
    font-hack
    font-inconsolata-dz-for-powerline
    google-chrome
    # handbrake
    # istat-menus
    iterm2
    java
    macvim
    ngrok
    # rubymine
    screenhero
    # spotify
    # transmit
    vagrant
    virtualbox
)

brew cask install "${apps[@]}"

# # Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r

# Allow Screen Hero to use accessibility
sudo sqlite3 "/Library/Application Support/com.apple.TCC/TCC.db" 'UPDATE access SET allowed = 1 WHERE client = "com.screenhero.screenhero";'
