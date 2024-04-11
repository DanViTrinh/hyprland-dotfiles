#!/bin/sh

# TODO: should probably use flag to be more verbose in the future
defaultApplication="$1"
file="$2"

mimeType=$(file -b --mime-type $file)
xdg-mime default $defaultApplication $mimeType
