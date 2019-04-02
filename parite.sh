#!/bin/sh
# Fonction qui teste la parité d'une valeur
pair_impair()
{
test `expr $1 % 2` -eq 0 && return 0 || return 1
}
# Pour chaque nombre passé au programme
for nb in $*
do
# Vérification de la parité de ce nombre
if pair_impair $nb
then
echo "$nb est pair"
else
echo "$nb est impair"
fi
done