export PS1="\n\e[32;1m(\u@\h) \e[35;1m[\w] \e[33;1m\$\e[0m\n"
#export PS1="\e[1;31m┌──\e[1;32m(\u@\h) \e[1;35m[\w] \e[31;3m.\n\e[1;31m└─\e[1;33m\$ \e[0m"
#export PS1="\n\e[1;31m┌──\e[1;32m(\u@\h) \e[1;35m[\w] \e[31;3m. \e[32;1mTIME:\e[32;3m\T\n\e[1;31m└─\e[1;33m\$ \e[0m"
#export PS1="\n\e[1;32m(\u@\h) \e[1;35m[\w] \e[31;3m.\n\e[0m"

function go {
    if [ -z $1 ]; then
        echo "go where??"
    else
        builtin cd "$1" && clear && ls -gop --human-readable --sort=extension --group-directories-first --color=auto
    fi
}

function when {
    echo $(date -d @$1)
}

# alias sec="echo $EPOCHSECONDS"
function now {
    echo $(date +%s)
}

# update go function above if you update list
alias l="ls -gop --human-readable --sort=extension --group-directories-first --color=auto"
alias cl="clear && l"
alias all="ls -gopal"
alias hidden="ls -ld .?*"
alias show="tree -L 2"
alias files="ls -1p | grep -v /"

alias up="go .."
alias home="go ~/"
alias back="cd $OLDPWD"

# --smooth doesn't work anymore??
# --morespace also...?
alias nano="nano --mouse --linenumbers --nohelp --softwrap"

# WARNING: this overwrites "/usr/bin/view" which is vi
# alias view="nano --view"

alias consoletext="sudo dpkg-reconfigure console-setup"
#alias edita="e ~/.bash_aliases && source ~/.bash_aliases"
alias editdisp="sudo nano --smooth /boot/config.txt"
alias editfont="nano ~/.fig/lxterminal/lxterminal.conf"
alias edittty="sudo dpkg-reconfigure console-setup"

alias ip="hostname -I | cut -d ' ' -f 1"


#https://raspberrypi.stackexchange.com/questions/59898/how-can-i-blank-the-screen-from-the-command-line-over-ssh
alias version="cat /etc/os-release"

#https://raspberrypi.stackexchange.com/questions/59898/how-can-i-blank-the-screen-from-the-command-line-over-ssh
#if doesn't work... run this: xset -display :0 s blank
alias wakeup="xset -display :0 dpms force on"
alias goodnight="xset -display :0 dpms force off"
alias sleep="cmatrix -abC yellow"



# PARSE THESE AND DELETE
#alias restart='sudo reboot'
#alias shutdown='sudo halt'
#alias apt-get='sudo apt-get'
#alias fuck='sudo'
#alias root='sudo su -'
#alias sp='source ~/.bash_profile'
#alias nerd='vim +NERDTree'
#alias cpdir='cp -a'
#alias ll='ls -lv --group-directories-first'
#alias mkdir='mkdir -p'
#alias ds='dirs -v'
#alias df='df -kTh'
#alias gitags='ctags -R -f ./.git/tags .'
#alias bn='git checkout -B'
#alias b='git branch'
#alias gc='git checkout'

#echo "                                          hey... listen!!"
