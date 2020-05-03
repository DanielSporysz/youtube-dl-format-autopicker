#!/usr/bin/bash

# this script asks you for a link to a YT video
# then fetches all download formats available with command $ youtube-dl -F $LINKVAR
# parses the code for the foramt .m4a and downloads it
SAVEPATH='./%(title)s.%(ext)s'
FORMAT='.m4a'

echo
read -p 'Link to video: ' LINKVAR

# TODO automatic grep for the foramt code for specified video format
echo
youtube-dl -F $LINKVAR

echo 
read -p 'Type the format code in: ' FORMATCODE

youtube-dl -f $FORMATCODE -o $SAVEPATH $LINKVAR
