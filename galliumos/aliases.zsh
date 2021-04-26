# update system
function apt-updater {
	sudo apt -qq update &&
	sudo apt upgrade -Vy &&
	sudo apt full-upgrade -Vy &&
	sudo apt autoremove -y &&
	sudo apt autoclean &&
	sudo apt clean &&
	sudo reboot
}

# exa
alias ls='exa -F --color=auto'
alias ll='ls -lhgm@FHa --git'
alias la='ls -a'

# misc
alias cmatrix='cmatrix -a'
alias unimatrix='unimatrix -C b'  #testing flags

alias tree='exa -TF --color=auto'
alias treepo='tree -a -I "node_modules|.git|.git-old"'
alias treelong='ll -TI "node_modeules|.git|.git-old"'

# Weather from wttr.in
alias weather='curl "wttr.in/Seattle?0q"'
alias weathertoday='curl "wttr.in/Seattle?1q"'
alias weatherline="curl 'wttr.in/Seattle?u&format=%l:+%c++%t+%h+%w+%m'"
alias forecast='curl "wttr.in/Seattle"'
alias moon='curl "wttr.in/moon"'
alias forecast2='curl "v2.wttr.in/Seattle"'

# Networking
alias scanlan='sudo nmap -sn 192.168.1.0/24'
alias scanlan2='sudo nmap -sn 10.0.0.0/24'

# ProtonVPN
alias protonvpn='sudo protonvpn'
alias pvpn='sudo protonvpn'

# Generate fake names
alias fakecard='faker-cli --helpers userCard | jq'

# pbcopy & pbpaste
alias c='xclip -i'  # testing -i flag
alias v='xclip -o'

# misc and magic
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias wget="wget -c"
alias gs="git status"

# aliens
alias aliens='echo "\U0001f47d"'


# zsh colormap oneliner
function colormap {
	for i in {0..255}; do print -Pn "%${i}F${(l:3::0:)i}%f " ${${(M)$((i%8)):#7}:+$'\n'}; done
}

# misc and magic
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias wget="wget -c"
alias gs="git status"



# ZSH stuff
function srz {
	source $HOME/.zshrc
}

