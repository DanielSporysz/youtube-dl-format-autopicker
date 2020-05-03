#!/usr/bin/bash

SAVEPATH='./%(title)s.%(ext)s'

read -p 'Link to video: ' linkvar
youtube-dl -x --audio-format m4a -o $SAVEPATH $linkvar
