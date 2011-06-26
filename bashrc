[ -f $HOME/.bash_profile ] && source $HOME/.bash_profile

source "$HOME/.rvm/scripts/rvm"

# Aliases

alias ll='ls -al'
alias ls='ls --color=auto'

alias grep='grep --color=auto'

alias tree='tree -CF -L 3'

function fif { grep -r --include "*.$1" "$2" --ignore-case .; }


# Configuration

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\[\033[0;32m\]\w\[\033[0m\]$(parse_git_branch)$ '
export TERM='xterm-256color'


# Environment

export EDITOR='vim'
