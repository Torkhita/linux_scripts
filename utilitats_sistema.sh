#!/bin/bash
# Funció: benvinguda
# Descripció: Rep un nom com a paràmetre i mostra un missatge personalitzat.
# Paràmetres: $1 = nom de l'alumne
benvinguda() {
    local nom=$1
    echo "Hola $nom, anem a comprovar el sistema"
}

# Funció: comprova_usuari
# Descripció: Rep un nom d'usuari i verifica si existeix al fitxer /etc/passwd.
# Paràmetres: $1 = nom d'usuari a comprovar
comprova_usuari() {
    local usuari=$1
    if grep -q "^$usuari:" /etc/passwd; then
        echo "L'usuari '$usuari' existeix al sistema."
    else
        echo "L'usuari '$usuari' NO existeix al sistema."
    fi
}

# Funció: calculadora_espai
# Descripció: Mostra l'espai lliure de la partició principal (/) amb df -h.
# Paràmetres: cap
calculadora_espai() {
    df -h /
}

read -p "Introdueix el teu nom: " nom_alumne
benvinguda "$nom_alumne"

read -p "Introdueix un nom d'usuari del sistema: " nom_usuari
comprova_usuari "$nom_usuari"

calculadora_espai
