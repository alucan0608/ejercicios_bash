#!/bin/bash

#----------CRONTAB----------
# 0 2 * * 7 /path/ej07.sh

if [[ $(date +%u) -eq 7 ]]
then

	rm -rf /tmp/* /temp/*

fi
