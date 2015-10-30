# Thanks to updates in how the command prompt is configured starting with
# newer RHEL versions, this has to be set in the bashrc, or globally,
# one can do: sudo ln -s /usr/bin/true /etc/sysconfig/bash-prompt-screen

case $TERM in
    screen*)
	    export PROMPT_COMMAND=/usr/bin/true
        [ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\h \W]\\$ "
esac

# vim: ts=4 sts=4 sw=4 et
