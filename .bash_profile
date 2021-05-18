parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\t \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# We want to load pyenv every time we open a new shell
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Bash-completion inclusion
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Git Completion Script
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Aliases
alias tf="terraform"
alias tflist="terraform workspace list"

# PATH modifications
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Applications:$PATH"


complete -C /usr/local/bin/terraform terraform
complete -C /usr/local/bin/terraform tf
complete -C "tfenv list | awk '{print $1}'" "tfenv use"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY="YES"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

