# Dotfiles
Collection of dotfiles to make for easier setup between different machines.

## Instructions
Some instructions for setting up a new system from this repo

### Bare git repo
These dotfiles are managed through a bare git repo. The idea is that we
separate the notion of the working directory and the directory where git stores
the `.git` folder. I like to keep my repo in a `$HOME/.dotfiles` repo.

```sh
git init --bare $HOME/.dotfiles
```

To tell git that we want to run in the context of the `$HOME/.dotfiles` repo,
but keep the working directory as `$HOME`, we need to use the unwieldy command

```sh
git --git-dir=HOME/.dotfiles --work-tree=$HOME
```

For now, you can alias this to something more palatable. (No need to persist
this, as soon as you check out the dotfiles from github, you'll have shell
aliases `dot` and `lazydot` set up for using `git` and `lazygit` respectively
with this setup.)

#### Bash
```sh
alias dot="git --git-dir=HOME/.dotfiles --work-tree=$HOME"
```

#### Fish
```sh
alias dot "git --git-dir=HOME/.dotfiles --work-tree=$HOME"
```

So, let's check out those dotfiles, then!

```sh
dot remote add origin git@github.com:sroelants/dotfiles.git
dot push --set-upstream origin master
dot pull origin master --allow-unrelated-histories
```

_NOTE_: In order to keep the noise down, you'll want to make sure git ignores
any untracked files by adding this to `$HOME/.dotfiles/config`:

```
[status]
	showUntrackedFiles = no
```

## Install packages
TODO: Compile a list of packages that I can pipe into pacman for a clean
install (Xorg, i3, neovim, etc...).

## Systemd services

## Misc
* Anne Pro udev rules
