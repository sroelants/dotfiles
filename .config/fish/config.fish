alias dot='git --git-dir $HOME/.dotfiles --work-tree=$HOME'
alias lazydot='lazygit -g $HOME/.dotfiles -w $HOME'
alias vim='nvim'

fish_add_path ~/.local/bin --path
fish_add_path ~/.nix-profile/bin --path

# Set up ssh-agent
 if test -z (pgrep ssh-agent)
   eval (ssh-agent -c)
   set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
   set -Ux SSH_AGENT_PID $SSH_AGENT_PID
   set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
 end

status --is-interactive; and rbenv init - | source
status --is-interactive; and atuin init fish | source
# set fish_greeting
starship init fish | source
