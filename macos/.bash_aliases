# OSX Daily Recommendation
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad                
alias ls='ls -GFh'

# More aliaises
alias ll='ls -rthla'
alias la='ls -a'                                                                

alias cmatrix='cmatrix -a'
alias vtop='vtop -t brew'
alias trode='tree -a -I "node_modules|.git|.git-old"'

# Weather from wttr.in
alias weather='curl wttr.in/Seattle?0qu'
alias weatherline="curl 'wttr.in/Seattle?u&format=%l:+%c+%t+%h+%w+%m'"
alias forecast='curl wttr.in/Seattle?u'
alias moon='curl wttr.in/moon'
