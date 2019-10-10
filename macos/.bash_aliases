# OSX Daily Recommendation
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad                
#alias ls='ls -GFh'

# exa
alias ls='exa -F --color=always'
alias ll='ls -lhgm@FHa --git'
alias la='ls -a'

# misc
alias cmatrix='cmatrix -a'
alias vtop='vtop -t brew'

alias tree='exa -TF --color=auto'
alias treepo='tree -a -I "node_modules|.git|.git-old"'
alias treelong='ll -TI "node_modeules|.git|.git-old"'

# Weather from wttr.in
alias weather='curl wttr.in/~Seattle?0qu'
alias weathertoday='curl wttr.in/~Seattle?1qu'
alias weatherline="curl 'wttr.in/~Seattle?u&format=%l:+%c++%t+%h+%w+%m'"
alias forecast='curl wttr.in/Seattle?u'
alias moon='curl wttr.in/moon'
alias forecast2='curl v2.wttr.in/Seattle?u'

# Networking
alias scanlan='sudo nmap -sn 10.0.0.0/24'
alias fakecard='faker-cli --helpers userCard | jq'


# Fastboot fix (?)
#alias fastboot='/usr/local/bin/fastboot-mac'

# pbcopy & pbpaste
alias c='pbcopy'
alias v='pbpaste'
