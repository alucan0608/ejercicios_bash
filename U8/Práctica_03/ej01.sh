#!/bin/bash
last | egrep -o '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'
