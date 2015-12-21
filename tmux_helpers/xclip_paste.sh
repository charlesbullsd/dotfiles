#!/bin/bash

if [[ -f /usr/bin/xclip ]]
then
	tmux set-buffer -- "$(xclip -o -selection clipboard)"
	tmux paste-buffer
fi
