###############################################################################
# Terminal                                                                    #
###############################################################################

# Import the 'Arthur' terminal profile
open "$DOTFILES_DIR/osx/Arthur.terminal"

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use "Arthur" theme (custom terminal)
defaults write com.apple.terminal "Default Window Settings" -string Arthur
defaults write com.apple.terminal "Startup Window Settings" -string Arthur

# Use larger default console size
defaults write com.apple.terminal rowCount -int 43
defaults write com.apple.terminal columnCount -int 132

# Disable press-and-hold for keys in Terminal.app favor of key repeat
defaults write com.apple.terminal ApplePressAndHoldEnabled -bool false

sudo killall cfprefsd > /dev/null 2>&1

#killall "Terminal" > /dev/null 2>&1
