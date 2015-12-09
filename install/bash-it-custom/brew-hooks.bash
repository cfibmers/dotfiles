# Use homebrew bash-completions if available
if [ -n "$(type -t brew)" ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi

  if [ -d /usr/local/opt/coreutils/libexec ]; then
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    alias ls='ls --color'
  fi

  if [ -d /usr/local/opt/go/libexec/bin ]; then
    export PATH="/usr/local/opt/go/libexec/bin:$PATH"
  elif [ -d /usr/local/opt/go14/libexec/bin ]; then
    export PATH="/usr/local/opt/go14/libexec/bin:$PATH"
  fi

  ## Setup direnv if installed
  if [ -n $(brew --prefix direnv) ]; then
    eval "$(direnv hook $0)"
    # hack until https://github.com/zimbatm/direnv/issues/155 is resolved
    _direnv_hook() {
      local previous_exit_status=$?;
      eval "$(direnv export bash)";
      return $previous_exit_status;
    }
  fi
fi
