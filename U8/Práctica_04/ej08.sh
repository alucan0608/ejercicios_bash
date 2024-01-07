#!/bin/bash

#----------CRONTAB----------
# */2 * * * * /path/ej08.sh

echo "$(date) $(who | cut -d' ' -f1 | sort -u | wc -l)" >> /tmp/usuarios

