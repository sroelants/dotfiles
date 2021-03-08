alias dot='git --git-dir $HOME/.dotfiles --work-tree=$HOME'
alias vim='nvim'

# set fish_greeting
starship init fish | source
# status --is-interactive; and rbenv init - | source
