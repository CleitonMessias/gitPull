#!/bin/bash

USERNAME=root

SCRIPT="cd /var/www/html/project_web && git pull"

HOSTS[0]="198.168.1.5"
HOSTS[1]="198.168.2.4"
HOSTS[2]="198.168.3.3"
HOSTS[3]="198.168.4.2"
HOSTS[4]="198.168.5.1"

COUNT=${#HOSTS[@]}
PERCENT=''

 for HOSTNAME in ${HOSTS[@]} ; do
	AUX=$(( AUX + 1 ))
	PERCENT=$(( AUX * 100 / COUNT ))"%"
	echo "######## - UPDATING($PERCENT): ${HOSTNAME}"
 	ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
 done
