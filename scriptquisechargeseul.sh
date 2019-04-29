#!/bin/bash
# Nb limite de chargements pris dans $1 s'il existe sinon pris par défaut à 100
limite=${1:-100}
# Initialisation compteur s'il n'existe pas
cpt=${cpt:-0}
# Incrément et affichage du compteur
cpt=`expr $cpt + 1`
echo "cpt=$cpt"
# Si le compteur n'a pas atteint la limite on importe le script ici
test $cpt -lt $limite && . $0 # Tout le script est intégralement recopié sous la ligne courante 