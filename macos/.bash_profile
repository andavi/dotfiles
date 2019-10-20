# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
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

#############################################
# MS
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

#######################################################
# add ~/.local to PATH
export PATH=$PATH:/Users/andavi/.local/bin

#######################################################
# Welcome message
echo "Current Time:" "$(date -R)"
weatherline
#echo '"'; sun-tzu-quotes; echo '" -Sun Tzu' > suntzunow 
#cat suntzunow | lolcat

suntzu="\"$(sun-tzu-quotes)\""
quote="$suntzu -Sun Tzu"
echo "$quote" | lolcat 
export PATH="/usr/local/sbin:$PATH"
