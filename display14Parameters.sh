#!/bin/sh
#This script recover and display the 1, 2  12 and 14 parameter

#recorver 2 parameters qui seront perdu après le script
prem=$1
sec=$2

#Decalage de 11 positions pour pouvoir acceder au 12 et 14e param

shift 11

#affichage des param demander
echo "Les parametres sont $prem, $sec, $1, $3"
