
if [ ! -d ~/.bash_it ]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --none
fi

cp "${DOTFILES_DIR}"/install/bash-it-custom/*.bash ~/.bash_it/custom/
