#!/bin/bash

# Bucle until: s'executa fins que la ruta introduïda existeixi
ruta=""
until [ -e "$ruta" ]; do
    read -p "Introdueix la ruta d'un fitxer: " ruta

    # Si l'usuari escriu sortir, el script acaba
    if [ "$ruta" = "sortir" ]; then
        exit 0
    fi

    if [ ! -e "$ruta" ]; then
        echo "La ruta no és vàlida, torna-ho a intentar."
    fi
done

echo "Fitxer trobat: $ruta"

# Bucle while: compte enrere des del número introduït fins a 0
read -p "Introdueix un número per al compte enrere: " num

# Validem que sigui un número
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Això no és un número vàlid."
    exit 1
fi

# El bucle s'executa mentre num sigui més gran que 0
while [ "$num" -gt 0 ]; do
    echo "Processant l'element en $num segons..."
    num=$((num - 1))
done

echo "Fet!"
