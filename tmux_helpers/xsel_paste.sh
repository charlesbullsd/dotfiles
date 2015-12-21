#!/bin/bash

if [[ -f /usr/bin/xsel ]]
then
	tmux set-buffer -- "$(xsel -o -b)"
	tmux paste-buffer
fi
