alias rm='rm -i'
alias vim=nvim
export LC_CTYPE=en_US.UTF-8

# Android development
export ANDROID_SDK=/home/sam/Android/Sdk
export PATH=$ANDROID_SDK/platform-tools:$PATH

# pywal
# (cat ~/.cache/wal/sequences &)


if [[ -n "$EMACS" ]]; then
    export TERM=eterm-256color
    alias emacs="emacsclient --no-wait"
    export EDITOR="emacsclient --no-wait"
    export VISUAL="emacsclient"
fi

source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# Load software-specific bundles
antigen bundle git

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# antigen theme bhilburn/powerlevel9k powerlevel9k
antigen theme denysdovhan/spaceship-prompt

antigen apply

# Fix Delete, PgUp, PgDown, etc...
# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "\^H" backward-delete-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '\^i' expand-or-complete-prefix

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sam/.zshrc'

autoload -Uz compinit
compinit

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# End of lines added by compinstall
#
#
# source /usr/share/nvm/init-nvm.sh
exec fish

