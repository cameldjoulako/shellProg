#!/bin/sh
# Script de saisie et d'évaluation simple du nombre saisi
# Saisie du nombre
echo "Entrez un nombre"
read nb
# Evaluation du nombre
case $nb in
0) echo "$nb vaut zéro";;
1|3|5|7|9) echo "$nb est impair";;
2|4|6|8) echo "$nb est pair";;
[1-9][0-9]) echo "$nb est supérieur ou égal à 10 et inférieur à 100";;
*) echo "$nb est un nombre trop grand pour être évalué"
esac