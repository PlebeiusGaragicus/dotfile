# purple
# export PS1="\n\[\e[1;35m\](\[\e[1;31m\]\u\[\e[1;35m\]@\[\e[1;34m\]\h\[\e[1;35m\]) [\w] \[\e[33;3m\]\A\[\e[0m\] \[\e[1;36m\]\$ \[\e[0m\]\n"

# if root...
if [[ $(id -u) -eq 0 ]] ; then
    export PS1="\n\e[32;1m(\u@\h) \e[35;1m[\w] \e[33;1m\$ \e[0m"
else
    export PS1="\n\[\e[1;32m\](\[\e[1;31m\]\u\[\e[1;32m\]@\[\e[1;34m\]\h\[\e[1;32m\]) \[\e[1;32m\][\w] \[\e[33;3m\]\A\[\e[0m\] \[\e[1;36m\]\$ \[\e[0m\]"
fi


function go {
    if [ -z $1 ]; then
        echo "go where??"
    else
        builtin cd "$1" && clear && ls -gop --human-readable --sort=extension --group-directories-first --color=auto
    fi
}
alias up="go .."
alias home="go ~/"
alias back="cd $OLDPWD"

function when {
    echo $(date -d @$1)
}

# alias sec="echo $EPOCHSECONDS"
function now {
    echo $(date +%s)
}

# update go function above if you update list
alias nano="nano --mouse --linenumbers --nohelp --softwrap"
alias l="ls -gop --human-readable --sort=extension --group-directories-first --color=auto"
alias cl="clear && l"
alias ca="cl -a"
alias all="ls -gopal"
alias files="ls -1p | grep -v /"
alias hidden="ls -ld .?*"

alias ip="hostname -I | cut -d ' ' -f 1"
alias df='df -kTh'

alias version="cat /etc/os-release"
