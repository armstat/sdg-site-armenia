#!/usr/bin/env bash
# This script deploys the built site to the server.

SERVER="91.221.229.124"
USERNAME="rubo"
FOLDER="/var/www/html/"

# The fully built site is already available at ~/repo/_site. Transfer it using
# rsync.
sudo apt install rsync
rsync -Oavh -e "ssh -o StrictHostKeyChecking=no" ~/repo/_site/ $USERNAME@$SERVER:$FOLDER --delete
