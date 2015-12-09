BUNDLE_DIR=~/.vim/bundle

mkdir -p "$BUNDLE_DIR"

cp "$DOTFILES_DIR"/vim/vimrc ~/.vimrc && chmod 600 ~/.vimrc
cp -pR "$DOTFILES_DIR"/vim/vim/* ~/.vim

# Install/update Vundle
git clone https://github.com/Shougo/neobundle.vim "$BUNDLE_DIR/neobundle.vim" || (cd "$BUNDLE_DIR/neobundle.vim" && git pull origin master)


# Install bundles
vim +NeoBundleInstall +qall
