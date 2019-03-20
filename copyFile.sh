#!/bin/sh

#copie des element d'un répertoire source vers un repertoire cible

echo "Type source directory"
read sourcefolder

echo "Type file extension"
read extfile

echo "Type File destination"
read ciblefolder

cp $sourcefolder/*.$extfile $ciblefolder

echo "Copy done very good" 