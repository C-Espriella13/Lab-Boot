#!/bin/bash

cd /home/loscra13/Desktop/Lab-Boot

# fetch remote
git fetch origin

CURR=$(git rev-parse Deploy)
REPO=$(git rev-parse origin/Deploy)

if [ "$CURR" != "$REPO" ]; then
	echo "Updates Found. Pulling Deploy"
	git pull origin Deploy
	npm install
else
	echo "No updates Found."
fi

# Refresh
exec /usr/bin/node app.js
