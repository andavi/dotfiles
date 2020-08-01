#!/bin/sh

# This will sync the dotfiles from your system to the repo
# Run it from the root directory of the dotfiles repo

# copy galliumos shell configs
rsync -azvh ~/.bashrc galliumos/
rsync -azvh ~/.bash_aliases galliumos/
rsync -azvh ~/.zshrc galliumos/
rsync -azvh ~/.p10k.zsh galliumos/
rsync -azvh ~/.oh-my-zsh/custom/aliases.zsh galliumos/
rsync -azvh ~/.oh-my-zsh/custom/shortcuts.zsh galliumos/

# personal helper scripts & repos
rsync -azsvh $HOME/.local/scripts/* galliumos/.local/scripts
rsync -azsvh $HOME/.local/repos/* galliumos/.local/repos
rsync -azsvh $HOME/.local/bin/* galliumos/.local/bin

# misc config
rsync -azvhr ~/.config/neofetch/ galliumos/neofetch/
# rsync -azvhr ~/.config/tilix/ tilix/

# sync newest programming fonts
# ls -D ~/.local/share/fonts/ >programmer-fonts.txt
