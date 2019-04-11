#!/bin/sh
# Si la condition est vérifiée
if test "$1" = "go"
then
# Ecriture de la fonction - S'il passe ici, le Shell prendra connaissance de son existence
fonction()
{
echo "Fonction ok"
}
fi
# Suite du script
# Si la condition n'a pas été vérifiée, la fonction ne sera pas connue et son appel provoquera une erreur
fonction