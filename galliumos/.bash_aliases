function apt-updater {
	sudo apt update &&
	sudo apt upgrade -y &&
	sudo apt dist-upgrade -Vy &&
	sudo apt autoremove -y &&
	sudo apt autoclean &&
	sudo apt clean &&
	sudo reboot
}

# exa
alias ls='exa -F --color=always'
alias ll='ls -lhgm@FHa --git'
alias la='ls -a'

# misc
alias cmatrix='cmatrix -a'
alias vtop='vtop -t brew'
alias tree='exa -TF --color=always'
alias treepo='tree -a -I "node_modules|.git|.git-old"'
alias treelong='ll -TI "node_modeules|.git|.git-old"'

# Weather from wttr.in
alias weather='curl wttr.in/Seattle?0qu'
alias weatherline="curl 'wttr.in/Seattle?u&format=%l:+%c+%t+%h+%w+%m'"
alias forecast='curl wttr.in/Seattle?u'
alias moon='curl wttr.in/moon'

# more
alias fakecard='faker-cli --helpers userCard | jq'
