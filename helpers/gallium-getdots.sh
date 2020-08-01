#!/bin/sh

# This will sync the dotfiles from your system to the repo
# Run it from the root directory of the dotfiles repo

# copy galliumos shell configs
rsync -azvh ~/.bashrc debian/
rsync -azvh ~/.bash_aliases debian/
rsync -azvh ~/.zshrc debian/
rsync -azvh ~/.p10k.zsh debian/
rsync -azvh ~/.oh-my-zsh/custom/aliases.zsh debian/
rsync -azvh ~/.oh-my-zsh/custom/shortcuts.zsh debian/

# personal helper scripts
rsync -azsvh $HOME/.local/scripts/* macos/.local/scripts

# misc config
rsync -azvhr ~/.config/neofetch/ debian/neofetch/
# rsync -azvhr ~/.config/tilix/ tilix/

# sync newest programming fonts
# ls -D ~/.local/share/fonts/ >programmer-fonts.txt
