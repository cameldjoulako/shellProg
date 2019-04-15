#!/bin/sh
chaine="toto:titi/tata"
old=$IFS
IFS=:/
set $chaine
IFS=$old
echo $1
echo $2
echo $3

