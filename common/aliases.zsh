# OSX Daily Recommendation
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad                
#alias ls='ls -GFh'

# exa
alias ls='exa -F --color=auto'
alias ll='ls -lhgm@FHa --git'
alias la='ls -a'

# misc
alias cmatrix='cmatrix -a'
#alias vtop='vtop -t brew'

alias tree='exa -TF --color=auto'
alias treepo='tree -a -I "node_modules|.git|.git-old"'
alias treelong='ll -TI "node_modeules|.git|.git-old"'

# Weather from wttr.in
alias weather='curl "wttr.in/~Seattle?0q"'
alias weathertoday='curl "wttr.in/~Seattle?1q"'
alias weatherline="curl 'wttr.in/~Seattle?u&format=%l:+%c++%t+%h+%w+%m'"
alias forecast='curl "wttr.in/Seattle"'
alias moon='curl "wttr.in/moon"'
alias forecast2='curl "v2.wttr.in/Seattle"'

# Networking
alias scanlan='sudo nmap -sn 10.0.0.0/24'
alias fakecard='faker-cli --helpers userCard | jq'


# Fastboot fix (?)
#alias fastboot='/usr/local/bin/fastboot-mac'

# pbcopy & pbpaste
alias c='pbcopy'
alias v='pbpaste'

# zsh colormap oneliner
function colormap {
	for i in {0..255}; do print -Pn "%${i}F${(l:3::0:)i}%f " ${${(M)$((i%8)):#7}:+$'\n'}; done
}


alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias wget="wget -c"
alias gs="git status"

# icons
alias aliens='echo "\U0001f47d"'
alias tux='echo "\uf31a"'
alias mac='echo "\uf302"'
alias ubuntu='echo "\uf31b"'
alias rpi='echo "\uf315"'
alias yin='echo "\ufb7e"'
