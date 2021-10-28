#!/bin/bash

source ./0-set-env.sh
PROGETTO=$TEMP_HUGO_DIR$TEMP_HUGO_PROJECT

#
echo - PASSO 1 - Elimina directory progetto $PROGETTO se esiste

if test -d "$PROGETTO"; then

    while true; do
    read -p " **DANGER** Sei sicuro di Rimuovere: '$PROGETTO' [y/n]? " yn
    case $yn in
        [Yy]* ) rm -rf $PROGETTO; echo "RIMOSSO";break;;
        [Nn]* ) echo "NON rimosso"; break;;
        * ) echo "Seleziona Y or N";;
    esac
    done
    echo "*** DANGER ***** DELETE GITHUB PROJECT ****"
    hub delete alai-arpas/$TEMP_HUGO_PROJECT
else
    echo "- Non eliminata perchè non esiste!"
fi

echo - next step       . 2-hugo-new-site.sh
