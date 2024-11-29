#!/bin/bash

# Fonction pour compter le nombre de fichiers dans le répertoire actuel
count_files() {
    echo $(ls -1 | wc -l)
}

# Demander à l'utilisateur de deviner le nombre de fichiers dans le répertoire actuel
echo "Devinez le nombre de fichiers dans le répertoire actuel :"
correct_answer=$(count_files)

# Boucle pour demander à l'utilisateur de deviner jusqu'à ce qu'il ait la bonne réponse
while true; do
    read guess
    if [[ "$guess" -lt "$correct_answer" ]]; then
        echo "Votre estimation est trop basse. Essayez encore !"
    elif [[ "$guess" -gt "$correct_answer" ]]; then
        echo "Votre estimation est trop élevée. Essayez encore !"
    else
        echo "Félicitations ! Vous avez deviné le bon nombre de fichiers !"
        break
    fi
done
