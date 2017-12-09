#!/bin/bash
# Update Homebrew, formulae, and packages

brew update
brew upgrade

# Install packages

apps=(
    ack
    archey
    aria2
    automake
    bash-completion
    bats
    bazaar
    cf-cli
    consul
    coreutils
    ctags
    dnsmasq
    git
    git-duet
    gnu-tar
    grc
    htop-osx
    iftop
    iperf
    jq
    kubernetes-cli
    lftp
    libtool
    lua
    mercurial
    moreutils
    mysql
    ngrep
    nmap
    openssl
    p7zip
    pigz
    postgresql
    protobuf
    pstree
    python
    rbenv
    rbenv-default-gems
    readline
    redis
    ruby-build
    socat
    speedtest_cli
    sqlite
    ssh-copy-id
    stress
    the_silver_searcher
    tig
    vagrant-completion
    watch
    wget
    xz
)

brew install "${apps[@]}"
brew install direnv --force-bottle
brew install docker-machine-driver-xhyve --without-docker-machine
brew install grep --with-default-names
brew install go --with-cc-common
brew install hugo --force-bottle
brew install node --without-completion
brew install packer --force-bottle
brew install vim --with-lua --override-system-vi

sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
