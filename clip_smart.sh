#!/usr/bin/bash

# this script asks for a link to a YT video
# then fetches all available download formats with command $ youtube-dl -F $LINKVAR
# parses the response for the format code for $FORMAT and downloads it
SAVEPATH='./%(title)s.%(ext)s'
FORMAT='.m4a'

echo
read -p 'Link to video: ' LINKVAR

# TODO automate this step by parsing the response for the format code
echo
youtube-dl -F $LINKVAR

echo 
read -p 'Type the format code in: ' FORMATCODE

youtube-dl -f $FORMATCODE -o $SAVEPATH $LINKVAR
