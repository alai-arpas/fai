#!/bin/bash

source ./0-set-env.sh
PROGETTO=$TEMP_HUGO_DIR$TEMP_HUGO_PROJECT
# 
echo
echo - PASSO 6 - copia file utili

if test -d "$PROGETTO"; then
    # diversi per ogni  progetto
    cp _prj_$TEMP_HUGO_PROJECT/* $PROGETTO
    # uguali per tutti i progetti
    cp _prj_UGUALI_PER_TUTTI/* $PROGETTO
else
    echo "Devi ancora creare il progetto - step 2-hugo-new-site.sh"
fi
