#!/bin/bash

cd /home/loscra13/Desktop/Lab-Boot

# Fetch from remote
git fetch origin

CURR=$(git rev-parse Deploy)
REPO=$(git rev-parse origin/Deploy)

if [ "$CURR" != "$REPO" ]; then
    echo "[INFO] Updates Found. Pulling Deploy"
    git pull origin Deploy
    npm install
    
    # Restart the Node service
    sudo systemctl restart hello.service
    
    echo "[INFO] Node app restarted with updates"
else
    echo "[INFO] No updates Found."
fi