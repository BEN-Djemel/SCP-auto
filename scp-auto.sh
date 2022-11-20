#!/bin/bash

#made by Djemel in 2022 github : https://github.com/BEN-Djemel

clear
echo -n "bienvenue, ecrivez 'a' si le chemin de destination n'est pas en local, 'b' si ça l'est mais pas le fichier source: "
read opt

if [ opt = "b" ]; then
	echo "entrez 1) Le port, 2) L'user, 3) L'IP, 4) Le chemin source, 5) Le chemin de destination."
	i=1
	while [ $i -ne 6 ]
	do
		read -p "entrez l'option $i) " mavar$i
		i=`expr $i + 1`
	done
	
	scp -r -P $mavar1 $mavar2@$mavar3:$mavar4 $mavar5
elif [ opt = "a" ]; then
	echo "entrez 1) Le chemin source, 2) Le port, 3) L'user, 4) L'IP, 5) Le chemin de destination."
	j=1
	while [ $j -ne 6 ]
	do
		read -p "entrez l'option $j) " pavar$j
		i=`expr $j + 1`
	done

	scp -r $pavar1 -P $pavar2 $pavar3@$pavar4:$pavar5
else
	echo "vous n avez choisis ni l'option a ni l'option b."
fi
