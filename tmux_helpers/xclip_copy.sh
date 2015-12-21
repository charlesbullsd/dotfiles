#!/bin/bash

if [[ -f /usr/bin/xclip ]]
then
	tmux save-buffer - | xclip -i -selection clipboard >/dev/null
fi
