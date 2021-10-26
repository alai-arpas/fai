#!/bin/bash

source ./0-set-env.sh
PROGETTO=$TEMP_HUGO_DIR$TEMP_HUGO_PROJECT

#
echo - PASSO 2 - Nuovo HUGO site: $PROGETTO

if test -d "$PROGETTO"; then
    echo "Attenzione la directory esiste già."
    echo - usa step '1-clean.sh' per cancellare
else
    hugo new site $PROGETTO --format yaml
    echo 
    echo - step 3-git-init-sh
fi
