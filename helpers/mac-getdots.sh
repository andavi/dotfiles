#!/bin/sh

# This will sync the dotfiles from your system to the repo
# Run it from the appropriate os directory within the dotfile repo

# TODO: make sync script at root call particular script based on OS

# copy MacOS bash configs
rsync -azvh ~/.bash_profile .
rsync -azvh ~/.bash_aliases .

# copy MacOS zsh configs
rsync -azvh ~/.zshrc .
rsync -azvh ~/.p10k.zsh .
rsync -azvh /Users/andavi/.oh-my-zsh/custom/aliases.zsh ./macos/
rsync -azvh /Users/andavi/.oh-my-zsh/custom/shortcuts.zsh ./common/


# vimrc
rsync -azvh ~/.vimrc .

# neofetch
rsync -azvhr ~/.config/neofetch/ neofetch/