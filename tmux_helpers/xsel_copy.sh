#!/bin/bash

if [[ -f /usr/bin/xsel ]]
then
	tmux save-buffer | xsel -i -b
fi
