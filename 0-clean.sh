#!/bin/bash

# Prima di creare un nuovo progetto
PROGETTO=$1

if test -d "$PROGETTO"; then

    while true; do
    read -p " **DANGER** Sei sicuro di Rimuovere: '$PROGETTO' [y/n]? " yn
    case $yn in
        [Yy]* ) rm -rf $PROGETTO; echo "RIMOSSO";break;;
        [Nn]* ) echo "NON rimosso"; break;;
        * ) echo "Seleziona Y or N";;
    esac
    done
else
    echo "'$PROGETTO': non ESISTE"
fi
