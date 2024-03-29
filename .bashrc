#
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export EDITOR=nvim

export XDG_CONFIG_HOME=/home/sam/.config/

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

 # Start ssh-agent, but only if no instance exists yet.
# if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#     ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
# fi

# if [[ ! "$SSH_AUTH_SOCK" ]]; then
#     source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
# fi

# Immediately drop into fish shell. This way, we inherit all of bash's env 
# variables and we don't have to worry about how fish handles things.
# if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
# then
# 	exec fish
# fi

# Automatically added by the Guix install script.
if [ -n "$GUIX_ENVIRONMENT" ]; then
    if [[ $PS1 =~ (.*)"\\$" ]]; then
        PS1="${BASH_REMATCH[1]} [env]\\\$ "
    fi
fi

GUIX_PROFILE="/home/sam/.config/guix/current"
source "$GUIX_PROFILE/etc/profile"
source "/home/sam/.guix-profile/etc/profile"

alias ls='ls --color=auto'
alias vim="nvim"
