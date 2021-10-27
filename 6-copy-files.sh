#!/bin/bash

source ./0-set-env.sh
PROGETTO=$TEMP_HUGO_DIR$TEMP_HUGO_PROJECT
# 
echo
echo - PASSO 6 - copia file utili

if test -d "$PROGETTO"; then
    cp Dockerfile $PROGETTO
    cp docker-compose.yml $PROGETTO
    cp Makefile $PROGETTO
    cp favicon.ico $PROGETTO
else
    echo "Devi ancora creare il progetto - step 2-hugo-new-site.sh"
fi
