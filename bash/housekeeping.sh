	#!/bin/bash
#find /home/david/Downloads/* -mtime +30 -exec rm {} \;
#We can log this by piping the find command to a logfile first
#add text alert as well w/ textbelt.com
#

LOG_DATE=$(date)

find /home/david/Downloads/* -mtime 20 -type f || echo "$LOG_DATE - No deletions" >> /var/log/deletions
# the below might be better in a backup script
# curl -X POST http://textbelt.com/text -d number=$CELL -d "message=$LOG_DATE - this is a test"
