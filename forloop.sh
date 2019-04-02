#!/bin/sh
# Script d'affichage d'informations sur les fichiers du répertoire courant
for fic in `ls` # Boucle sur chaque fichier affiché par la commande "ls"
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