#!/bin/sh
# Script qui traite plusieurs options et qui affiche ce qu'il a analysé
# Options possibles: -a -b -c val -d val [-d val] …
# Récupération de chaque option du script
while getopts :abc:d: opt
do
 # Analyse de l'option reçue
 case $opt in
 a) # Mémorisation option "a" trouvée
 opt_A="true" ;;
 b) # Mémorisation option "b" trouvée
 opt_B="true" ;;
 c) # Mémorisation option "c" trouvée et mémorisation de sa valeur
 opt_C="true"
 val_C="$OPTARG" ;;
 d) # Mémorisation option "d" trouvée et concaténation de sa valeur
 opt_D="true"
 val_D="$val_D $OPTARG" ;;
 *)
 echo "Usage: `basename $0` [-a] [-b] [-c val] [-d val1] [-d val2] [fic1 …]"
 exit 1
 esac
done
# Décalage des paramètres pour placer le premier argument non-optionnel en "$1"
shift `expr $OPTIND – 1`
# Affichage du résultat de l'analyse
test –n "$opt_A" && echo "L'option A a été demandée"
test –n "$opt_B" && echo "L'option B a été demandée"
test –n "$opt_C && echo "L'option C a été demandée avec la valeur [$val_C]"
test –n "$opt_D && echo "L'option D a été demandée avec les valeurs [$val_D]"
# Affichage du reste des paramètres s'il y en a
test $# -ne 0 && echo "Il reste encore $# paramètres qui sont $*" || echo "Il n'y a plus de paramètre