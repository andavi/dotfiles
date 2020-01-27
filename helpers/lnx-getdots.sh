#!/bin/sh

# This will sync the dotfiles from your system to the repo
# Run it from the ~~os~~ root directory of the dotfiles repo

# copy galliumos shell configs
rsync -azvh ~/.bashrc debian/
rsync -azvh ~/.bash_aliases debian/
rsync -azvh ~/.zshrc debian/
rsync -azvh ~/.p10k.zsh debian/

# misc config
rsync -azvhr ~/.config/neofetch/ neofetch/
# rsync -azvhr ~/.config/tilix/ tilix/

# sync newest programming fonts
# ls -D ~/.local/share/fonts/ >programmer-fonts.txt
