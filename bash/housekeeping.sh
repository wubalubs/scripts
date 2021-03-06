#!/bin/bash


# Variables
LOG_DATE=$(date)
FILES="$(find ~/Downloads/* -mtime +10 -type f)"


if [ -z "$FILES" ];

	then	
	printf "\\n$LOG_DATE - No Deletions\\n" >> ~/.deletions.log

	else
	printf "\\n$LOG_DATE - Deleted Items \\n${FILES}\\n" >> ~/.deletions.log
	find ~/Downloads/* -type f -mtime +10 -exec rm {} \;	
fi
