#!/bin/bash
# Script per actualitzar el sistema i instal·lar paquets

PAQUETS="vim git curl"

sudo apt update
sudo apt upgrade -y
sudo apt install -y $PAQUETS
