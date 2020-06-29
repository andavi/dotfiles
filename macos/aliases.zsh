# OSX Daily Recommendation
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad                
#alias ls='ls -GFh'

# exa
alias ls='exa -F --color=auto'
alias ll='ls -lhgmFHa --git'
alias la='ls -a'
alias lx='ls -x'

# misc
alias cmatrix='cmatrix -a'
#  alias vtop='vtop -t dark'
alias tzu='sun-tzu-quotes'
alias tzubow='echo $(echo \"$(tzu)\" | lolcat -f -F 0.1) "~Sun Tzu"'

alias tree='exa -TF --color=auto'
alias treepo='tree -a -I "node_modules|.git|.git-old|.DS*"'
alias treelong='ll -TI "node_modeules|.git|.git-old"'

# Weather from wttr.in
alias weather='curl "wttr.in/~Seattle?0q"'
alias weathertoday='curl "wttr.in/~Seattle?1q"'
alias weatherline="curl 'wttr.in/~Seattle?u&format=%l:+%c++%t+%h+%w+%m'"
alias forecast='curl "wttr.in/Seattle"'
alias moon='curl "wttr.in/moon"'
alias forecast2='curl "v2.wttr.in/Seattle"'
function wttr {
    # change Paris to your default location
    local request="wttr.in/${1-Seattle}"
    [ "$(tput cols)" -lt 100 ] && request+='?nu'
    curl -H "Accept-Language: ${LANG%_*}" --compressed "$request"
}

# Networking
alias scanlan='sudo nmap -sn 10.0.0.0/24'
alias scanlan2='sudo nmap -sn 10.0.1.0/24'
alias fakecard='faker-cli --helpers userCard | jq'


# Fastboot fix (?)
#alias fastboot='/usr/local/bin/fastboot-mac'

# pbcopy & pbpaste
alias c='pbcopy'
alias v='pbpaste'

# shell ascii rainbow
function rasciibow {
	for (( i = 30; i < 38; i++ )); do echo -e "\033[0;"$i"m Normal: (0;$i); \033[1;"$i"m Light: (1;$i)"; done
}

# zsh colormap oneliner
function colormap {
	for i in {0..255}; do print -Pn "%${i}F${(l:3::0:)i}%f " ${${(M)$((i%8)):#7}:+$'\n'}; done
}


alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias wget="wget -c"
alias gs="git status"

# clamav virus scan
alias vscan='freshclam -v; clamscan -rv --bell -i /'

# emoticons
alias aliens='echo "\U0001f47d"'
alias yin='echo "\ufb7e"'

# easy timestamp snippet to  add to frequently ediited files
alias timestamp='date "+%Y.%m.%d-%H:%M:%S"'

# enumerate a string on white spaces for a readable numbered list
#alias enum='python /Users/andavi/.local/scripts/enumStr.py'

