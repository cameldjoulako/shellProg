#!/bin/sh
# Script d'affichage d'informations sur les fichiers du répertoire courant
# La commande "read" lit l'entrée standard. Mais cette entrée peut être redirigée d'un pipe
# De plus, "read" renvoie "vrai" quand elle a lu; et "faux" quand il n'y a plus rien à lire
# On peut donc programmer une boucle de lecture pour traiter un flot d'informations
ls |while read fic # Tant que le "read" peut lire des infos provenant du "ls"
do
# Evaluation du fichier traité
if test -d "$fic"
then
echo "$fic est un répertoire"
elif test -f "$fic"
then
echo "$fic est un fichier ordinaire"
else
echo "$fic est un fichier spécial ou lien symbolique ou pipe ou socket"
fi
done