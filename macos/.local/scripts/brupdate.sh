#!/bin/sh

# brew update
brew update
brew upgrade

# cask update
brew cu -af
brew tap

# cleanup
brew cleanup

# see what doc has to say
brew doctor

# source ZSH config to restablish preferred envs
#source /Users/andavi/.zshrc
