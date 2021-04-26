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
#alias ls='exa -F --color=always'
#alias ll='ls -lhgm@FHa --git'
#alias la='ls -a'

# misc
alias cmatrix='cmatrix -a'
alias vtop='vtop -t brew'
alias tree='exa -TF --color=always'
alias treepo='tree -a -I "node_modules|.git|.git-old"'
alias treelong='ll -TI "node_modules|.git|.git-old"'

# Weather from wttr.in
alias weather='curl wttr.in/Seattle?0'
alias weatherline="curl 'wttr.in/Seattle?u&format=%l:+%c+%t+%h+%w+%m'"
alias forecast='curl wttr.in/Seattle'
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
alias ls='ls -CF --color=always'
alias la='ls -A'
alias ll='ls -lghAHS'


#########################
# From bash-docs package examples
# Some useful aliases.
alias texclean='rm -f *.toc *.aux *.log *.cp *.fn *.tp *.vr *.pg *.ky'
alias clean='echo -n "Really clean this directory?";
	read yorn;
	if test "$yorn" = "y"; then
	   rm -f \#* *~ .*~ *.bak .*.bak  *.tmp .*.tmp core a.out;
	   echo "Cleaned.";
	else
	   echo "Not cleaned.";
	fi'
alias h='history'
alias j="jobs -l"
alias l="ls -l "
#alias ll="ls -l"
#alias ls="ls -F"
alias pu="pushd"
alias po="popd"

#
# Csh compatability:
#
alias unsetenv=unset
function setenv () {
  export $1="$2"
}

# Function which adds an alias to the current shell and to
# the ~/.bash_aliases file.
add-alias ()
{
   local name=$1 value="$2"
   echo alias $name=\'$value\' >>~/.bash_aliases
   eval alias $name=\'$value\'
   alias $name
}

# "repeat" command.  Like:
#
#	repeat 10 echo foo
repeat ()
{ 
    local count="$1" i;
    shift;
    for i in $(_seq 1 "$count");
    do
        eval "$@";
    done
}

# Subfunction needed by `repeat'.
_seq ()
{ 
    local lower upper output;
    lower=$1 upper=$2;

    if [ $lower -ge $upper ]; then return; fi
    while [ $lower -lt $upper ];
    do
	echo -n "$lower "
        lower=$(($lower + 1))
    done
    echo "$lower"
}


###################################
# More handpicked from bash-doc package examples

rot13()
{
	if [ $# = 0 ] ; then
		tr "[a-m][n-z][A-M][N-Z]" "[n-z][a-m][N-Z][A-M]"
	else
		tr "[a-m][n-z][A-M][N-Z]" "[n-z][a-m][N-Z][A-M]" < $1
	fi
}


psgrep()
{
	ps -aux | grep $1 | grep -v grep
}


pskill()
{
	local pid

	pid=$(ps -ax | grep $1 | grep -v grep | awk '{ print $1 }')
	echo -n "killing $1 (process $pid)..."
	kill -9 $pid
	echo "slaughtered."
}

