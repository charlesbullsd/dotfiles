#!/bin/bash

# Start a TMUX session if the user is currently not in one.
# This could be added to a bashrc or bash_profile.

if ${TMUX+"false"}
then
    read -p "Start TMUX session? [Y/n]: " -n 1 -r
    echo

    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        tmux
    fi
fi
