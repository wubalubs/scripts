#!/bin/bash


# Variables
LOG_DATE=$(date)
FILES="$(find /home/david/Downloads/* -mtime +5 -type f)"


if [ -z "$FILES" ];

	then	
	printf "\\n$LOG_DATE - No Deletions\\n" >> ~/.deletions.log

	else
	printf "\\n$LOG_DATE - Deleted Items \\n${FILES}" >> ~/.deletions.log
	find /home/david/Downloads/* -type f -mtime +5 -exec rm {} \;	
fi




# Finds files older than 20 days and deletes, reports "no deletions" if no match
# find /home/david/Downloads/* -mtime 20 -type f || printf "\\n$LOG_DATE - No deletions\\n" >> ~/.deletions.log
# find /home/david/Downloads/* -mtime +30 -exec rm {} \;
