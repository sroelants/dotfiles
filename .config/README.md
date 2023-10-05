# Dotfiles
Collection of dotfiles to make for easier setup between different machines.

## Instructions
Some instructions for setting up a new system from this repo

### Bare git repo
These dotfiles are managed through a bare git repo. The idea is that we
separate the notion of the working directory and the directory where git stores
the `.git` folder. I like to keep my repo in a `$HOME/.dotfiles` repo.

```sh
git clone --bare git@github.com:sroelants/dotfiles.git $HOME/.dotfiles
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
(Notice that `git clone` didn't actually place the files in their locations, 
it simply pulled in all the branches into the `.git` directory.)

```sh
dot checkout
```

Checkout might fail because git refuses to overwrite any existing files. If 
you're on a clean install, it's probably safe to simply remove the conflicting 
files. If not, simply back them up.

_NOTE_: In order to keep the noise down, you'll want to make sure git ignores
any untracked files by adding this to `$HOME/.dotfiles/config`:

```
dot config --local status.showUntrackedFiles no
```

## Install packages
I try and keep a trimmed-down-but-complete list of packages I'll want on a fresh
system in `.config/packages` (generated with `pacman -Qqent`). Install them all
at once by piping them into pacman/yay:

```sh
xargs -a $HOME/.config/packages pacman -S
```


## Systemd services

## Misc
* Anne Pro udev rules

## Manual steps so far:
### Tmux
* Bootstrap TPM (clone repo and run `prefix - I` to install
	```
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	```
	
	
### Sudo
* Add myself to the following groups (`usermod -aG [ groups ] sam`)
  * wheel: For sudo permissions (after editing `/etc/sudoers`)

### Screen backlight
	* video: For permission to change screen settings (backlight), after adding a
		udev rule:
		```
		ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chgrp video $sys$devpath/brightness", RUN+="/bin/chmod g+w $sys$devpath/brightness"
		```
		
### Bluetooth
* Set up bluetooth
	* install `bluez`, `bluez-utils` and `blueberry`.
	* start/enable `bluetooth.service`
		```sh
		systemctl start bluetooth
		systemctl enable bluetooth
		```

### Docker
* Add user to `docker` group:
```sh
usermod -aG docker sam
```

* Start/enable docker service
```sh
systemctl start docker
systemctl enable docker
```

### Set up plocate
Add database generation timer
```sh
systemctl start plocate-updatedb.timer
```

