# Update Homebrew, formulae, and packages

brew update
brew upgrade

# Install packages

apps=(
    ack
    ant
    archey
    aria2
    asciinema --force-bottle
    automake
    bash-completion
    bats
    bazaar
    brew-cask
    cf-cli
    coreutils
    ctags
    direnv --force-bottle
    dnsmasq
    git
    git-duet
    gnu-tar
    google-chrome
    gradle
    grc
    grep --with-default-names
    go14 --with-cc-common
    htop-osx
    hugo --force-bottle
    iftop
    iperf
    jq
    lftp
    libtool
    lua
    maven
    mercurial
    moreutils
    mysql
    ngrep
    nmap
    node --without-completion
    openssl
    p7zip
    packer --force-bottle
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
    vim --with-lua --override-system-vi
    watch
    wget
    xz
)

brew install "${apps[@]}"
