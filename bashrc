if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

RED="\[\033[01;31m\]"
YELLOW="\[\033[01;33m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
WHITE="\[\033[00m\]"

export GIT_PS1_SHOWDIRTYSTATE=1

if [[ ${EUID} == 0 ]] ; then
        PS1='$RED\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
        PS1=$GREEN'\u@\h'$BLUE' \w'$YELLOW'$(__git_ps1)'$BLUE' \$ '$WHITE
fi

