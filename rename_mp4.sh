#!/bin/bash

# Parcourir tous les fichiers .mp4 dans le répertoire courant
for file in *.mp4; do
    # Vérifier si le fichier existe (au cas où il n'y a pas de fichiers .mp4)
    if [ -e "$file" ]; then
        # Générer une chaîne alphanumérique aléatoire de 8 caractères
        new_name=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
        
        # Renommer le fichier avec la nouvelle chaîne alphanumérique
        mv "$file" "${new_name}.mp4"
        
        echo "Renamed $file to ${new_name}.mp4"
    else
        echo "No .mp4 files found in the current directory."
    fi
done
