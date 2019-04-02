#! /bin/sh
 old = $IFS
 chaine = `grep $1 /etc/passwd`
 IFS=:/
 set $chaine
 echo $1 $3 $4 $7
 IFS = $old
