export API_CLARIFAI=e0b0295af1b74d81be3ba345f2d743c3

#PATH="/usr/local/bin:$PATH"

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#####################################################
# All this below from Git course on Udacity
# Enable tab completion
source ~/git-completion.bash

# colors!
#green="\[\033[0;32m\]"
#blue="\[\033[0;34m\]"
#red="\[\033[0;31m\]"
#reset="\[\033[0m\]"

# Change command prompt
#source ~/git-prompt.sh
#export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
# uncomment line below for original git course colors
#export PS1="$green\u$red\$(__git_ps1)$blue \W$ $reset"

#####################################################
# OSX Daily Recommendation
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
#alias ls='ls -GFh'

# More Aliases
#alias ll='ls -l'
#alias la='ls -a'
#alias cmatrix='cmatrix -C blue -a'
#alias vtop='vtop -t brew'
#alias trode='tree -a -I "node_modules|.git|.git-old"'

#####################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#####################################################

# added by Anaconda3 5.0.1 installer
export PATH="/Users/andavi/anaconda3/bin:$PATH"

#####################################################
# For Code Fellows seattle-js-401n12
# Read $HOME/.bashrc, if present.
if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

# set the default editor to VSCode
export EDITOR=code

#####################################################
# Path for ADK tools
# export PATH=”/Users/andavi/Tools/platform-tools/bin:$PATH”
# export PATH=”/Users/andavi/Tools/platform-tools/:$PATH”


if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin


########################################################
# Powerlines

export PATH=$PATH:/Users/andavi/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/andavi/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh


#######################################################
# Link to .bash_aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi


########################################################
