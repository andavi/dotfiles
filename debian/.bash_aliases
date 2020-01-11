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
alias ls='exa -F --color=always'
alias ll='ls -lhgm@FHa --git'
alias la='ls -a'

# misc
alias cmatrix='cmatrix -a'
alias vtop='vtop -t brew'
alias tree='exa -TF --color=always'
alias treepo='tree -a -I "node_modules|.git|.git-old"'
alias treelong='ll -TI "node_modules|.git|.git-old"'

# Weather from wttr.in
alias weather='curl wttr.in/Seattle?0qu'
alias weatherline="curl 'wttr.in/Seattle?u&format=%l:+%c+%t+%h+%w+%m'"
alias forecast='curl wttr.in/Seattle?u'
alias moon='curl wttr.in/moon'

# more
alias fakecard='faker-cli --helpers userCard | jq'

# rsync shortcuts
function cpr {
  sudo rsync --archive -hh --partial --info=stats1 --info=progress2 --modify-window=1 "$@"
}
function mvr {
  sudo rsync --archive -hh --partial --info=stats1 --info=progress2 --modify-window=1 --remove-source-files "$@"
}

# xclip
alias c='xclip'
alias v='xclip -o'

# colormap oneliner - borrowed from .p10k.zsh
function colormap {
	for i in {0..255}; do print -Pn "%${i}F${(l:3::0:)i}%f " ${${(M)$((i%8)):#7}:+$'\n'}; done
}


# listen
alias listen='sudo netstat -ntpul'
