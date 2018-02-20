#!/bin/bash

fichier=$1
path=$(dirname $1)
path+="/"
timestamp=$(stat -c %Y $fichier)
timestamp+=".jpg"
dest=$path$timestamp

echo "- $fichier - renamed in - $timestamp -"
mv $fichier $dest

#fichier=$1 				: On ajoute a une variable $fichier le fichier capture.jpg
#path=$(dirname $1) 		: On ajoute a une variable $path le chemin de capture.jpg
#path+="/" 			: On ajoute un / a la fin du chemin
#timestamp=$(stat -c %Y $fichier) : On ajoute le time-stamp de capture.jpg dans un variable $timestamp
#timestamp+=".jpg"			: On ajoute l'extension .jpg a la fin du timestamp
#dest=$path$timestamp		: On additionne le chemin et le nouveau nom du fichier pour creer la variable $dest du dossier le destination
#mv $fichier $dest			: On renomme capture.jpg par son timestamp
