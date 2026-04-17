#!/bin/bash

# Neteja la pantalla abans de demanar dades
clear

# Demanar el nom d'usuari amb read -p
read -p "Nom d'usuari: " NOM_USUARI
if [ -z "$NOM_USUARI" ]; then
    echo "Error: el nom d'usuari no pot estar buit."
    exit 1
fi

# Demanar el comentari o nom complet amb read -p
read -p "Comentari o nom complet: " COMENTARI
if [ -z "$COMENTARI" ]; then
    echo "Error: el comentari no pot estar buit."
    exit 1
fi

# Demanar el nom del grup amb read -p
read -p "Nom del grup: " NOM_GRUP
if [ -z "$NOM_GRUP" ]; then
    echo "Error: el nom del grup no pot estar buit."
    exit 1
fi

# Crear el grup si no existeix
groupadd "$NOM_GRUP"

# Crear l'usuari amb el nom, comentari i grup primari
useradd -c "$COMENTARI" -g "$NOM_GRUP" "$NOM_USUARI"

# Missatge de confirmació final
echo "L'usuari $NOM_USUARI s'ha creat correctament dins del grup $NOM_GRUP"
