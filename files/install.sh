#!/bin/sh
set -e
set -x

apk add bash
apk add curl
apk add tree
apk add wget

apk add vim vim-help
rm /usr/bin/vi
ln -s /usr/bin/vim /usr/bin/vi

rm $0

