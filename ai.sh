#!/bin/bash
# Ús: ./ai.sh paquet1 paquet2 ...

# Comprova que s'han passat paràmetres
if [ $# -eq 0 ]; then
    echo "Ús: ./ai.sh paquet1 paquet2 ..."
    exit 1
fi

# Actualitza el sistema
sudo apt update
sudo apt upgrade -y

# Instal·la els paquets passats com a paràmetres
sudo apt install -y $@
