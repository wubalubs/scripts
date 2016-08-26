#!/bin/bash


# Variables
LOG_DATE=$(date)
FILES="$(find /home/david/Downloads/* -mtime 20 -type f)"
# to echo this use "${FILES}"


# Finds files older than 20 days and deletes, reports "no deletions" if no match
find /home/david/Downloads/* -mtime 20 -type f || echo "$LOG_DATE - No deletions" >> /var/log/deletions





# find /home/david/Downloads/* -mtime +30 -exec rm {} \;
# the below might be better in a backup script
# curl -X POST http://textbelt.com/text -d number=$CELL -d "message=$LOG_DATE - this is a test"
# maybe this script should run a backup of homedir as well...?
# clear cookies, etc, older than 60 days


