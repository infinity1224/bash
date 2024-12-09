#!/bin/bash

#####################################
#Author: Azmathulla G
#Version: v1
#Date: 09-12-2024
#This script outputs the node health
#####################################

set -x #DEBUG MODE
set -e #Used to exit the script when there is an error
set -o pipefail #Used to detect failures in any command in the pipeline and not just the last one

df -h #Used for printing the status of your disk usage

free -m #Used for displaying the RAM info in megabytes

nproc #Used for displaying the no of CPU's present

ps -ef | grep -i "amazon" | awk -F" " '{print $2}'  #Used for displaying pid for the processes in which amazon is present
