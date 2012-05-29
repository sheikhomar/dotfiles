source "$HOME/.rvm/scripts/rvm"
source "$HOME/.zsh/git-prompt/zshrc.sh"

stty -ixon
 
# History settings
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd:cd ..:cd.."
export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY # add timestamps to history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE # don't save history if command begin with a blank

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD

# Wait a few seconds before deleting everything.
setopt RM_STAR_WAIT

# Please don't kill background processes on Ctrl-D.
setopt AUTO_CONTINUE

# Disable beeps.
setopt NO_BEEP

#export PROMPT='%B%m%~%b$(git_super_status) %# '
export PROMPT=$'%{\e[0;35m%}%m:%{\e[0;37m%}%~%(!.#.$) %{\e[00m%}$(git_super_status)'
export EDITOR='vim'
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk
export PATH=$PATH:~/android-sdk/tools:~/android-sdk/platform-tools

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
