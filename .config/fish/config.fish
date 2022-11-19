alias dot='git --git-dir $HOME/.dotfiles --work-tree=$HOME'
alias vim='nvim'
alias bun='~/.bun/bin/bun'

# Set up ssh-agent
 if test -z (pgrep ssh-agent)
   eval (ssh-agent -c)
   set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
   set -Ux SSH_AGENT_PID $SSH_AGENT_PID
   set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
 end

# set fish_greeting
starship init fish | source
# status --is-interactive; and rbenv init - | source
