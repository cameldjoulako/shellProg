#!/bin/bash
# Fonction qui sera appelée lors d'un "CTRL-C"
protect()
{
 echo "Il est interdit d'arrêter ce script avant sa fin naturelle"
}
# Corps du programme principal
# Mise en place de la protection contre le "CTRL-C"
trap protect SIGINT # On peut écrire aussi "trap protect 2"
# Mise en place d'un compteur
limite=100
cpt=0
# Tant que le compteur n'a pas atteint sa limite
while test $cpt -lt $limite
do
 # Incrément et affichage du compteur
 cpt=`expr $cpt + 1`
 echo "cpt=$cpt"
 # Petite tempo pour laisser le temps de taper "CTRL-C"
 sleep 1
done 