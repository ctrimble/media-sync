#!/bin/sh

if [ ! -d "/source" ]; then echo "You need to mount the /source directory."; exit; fi
if [ ! -d "/target" ]; then echo "You need to mount the /target directory."; exit; fi

rsync-sidekick /source/ /target/

rsync -av /source/ /target/
