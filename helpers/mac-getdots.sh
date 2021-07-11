#!/bin/sh

# This will sync the dotfiles from your system to the repo

# copy MacOS bash configs
#rsync -azvh ~/.bash_aliases macos/
#rsync -azvh ~/.bash_profile macos/

# copy MacOS zsh configs
rsync -azvh ~/.zshrc macos/
rsync -azvh ~/.p10k.zsh macos/
rsync -azvh /Users/andavi/.oh-my-zsh/custom/aliases.zsh macos/
rsync -azvh /Users/andavi/.oh-my-zsh/custom/shortcuts.zsh macos/

# personal helper scripts
rsync -azsvh $HOME/.local/scripts/* macos/.local/scripts

# vimrc
rsync -azvh ~/.vim/vimrc macos/

# neofetch
rsync -azvhr ~/.config/neofetch/ macos/neofetch/
