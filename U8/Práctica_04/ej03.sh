#!/bin/bash

if [ ! -d "/root/cuarentena" ]
then
	mkdir -p /root/cuarentena
fi

find / -type f -name "*Hack*" -exec mv {} /root/cuarentena/ \;
