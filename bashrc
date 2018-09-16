# Thanks to updates in how the command prompt is configured starting with
# newer RHEL versions, this has to be set in the bashrc, or globally,
# one can do: sudo ln -s /usr/bin/true /etc/sysconfig/bash-prompt-screen


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

case $TERM in
    screen*)
	export PROMPT_COMMAND=/usr/bin/true
esac

[ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\h \W]\\$ "

command -v dnf >/dev/null 2>&1
if [ "$?" -eq "0" ]; then
	alias dnf='sudo dnf'
fi

command -v yum >/dev/null 2>&1
if [ "$?" -eq "0" ]; then
	alias yum='sudo yum'
fi

# Fix SSH auth socket location so agent forwarding works with tmux
if test "$SSH_AUTH_SOCK" ; then
	ln -sf $SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock
fi

# vim: ts=4 sts=4 sw=4 et
