# Homebrew Setup

Some plugins require a proper and 'modern' vim.  The easiest way to get that
for Mac OS X is with homebrew.  In order to make things work correctly, we
have to make sure that homebrew's python is installed before vim is installed

```bash
brew update
brew uninstall python; brew uninstall vim
brew install python
brew install vim --with-lua --override-system-vi
brew install macvim --with-lua
cd ~/.vim/bundle/YouCompleteMe
git pull
git submodule update --init --recursive
./install.sh
cd -
```

# Pathogen

Vim, like a lot of other cool open source projects, has a community of
developers that like to tweak their environment and share what they've done.
Given enough time, that inevitably results in the creation of a package
manager.  Vim's no exception and my package manager of choice is pathogen.

## Bundles

1. ~~https://github.com/Valloric/YouCompleteMe.git~~
1. https://github.com/altercation/vim-colors-solarized
1. https://github.com/w0ng/vim-hybrid
1. https://github.com/bling/vim-airline
1. https://github.com/mhinz/vim-signify
1. ~~https://github.com/bling/vim-bufferline~~
1. https://github.com/elzr/vim-json.git
1. https://github.com/fatih/vim-go
1. https://github.com/gregsexton/MatchTag.git
1. https://github.com/gregsexton/gitv.git
1. https://github.com/kien/ctrlp.vim
1. https://github.com/majutsushi/tagbar.git
1. https://github.com/mbbill/undotree.git
1. https://github.com/mileszs/ack.vim.git
1. https://github.com/scrooloose/nerdcommenter.git
1. https://github.com/scrooloose/nerdtree.git
1. ~~https://github.com/sjl/gundo.vim~~
1. https://github.com/tpope/vim-fugitive
1. https://github.com/vim-scripts/matchit.zip.git
1. ~~https://github.com/honza/dockerfile.vim.git~~
1. https://github.com/ekalinin/Dockerfile.vim
1. https://github.com/tpope/vim-commentary
1. https://github.com/tpope/vim-surround
1. https://github.com/tpope/vim-repeat
1. https://github.com/tpope/vim-endwise
1. https://github.com/Shougo/neocomplete.vim
1. https://github.com/Shougo/neosnippet.vim.
1. https://github.com/Shougo/neosnippet-snippets
1. https://github.com/cespare/vim-toml
1. https://github.com/terryma
