#!/bin/bash
langage="Java+PHP+Javascript+Python"
old=IFS
IFS=+
set $langage
IFS=$old
echo $1
echo $2
echo $3
echo $4
IFS=$old
set $langage