#!/bin/bash

source ./0-set-env.sh
PROGETTO=$TEMP_HUGO_DIR$TEMP_HUGO_PROJECT
# 
echo
echo - PASSO 5 - cambio directory

if test -d "$PROGETTO"; then
    cd $PROGETTO
    git push --set-upstream origin master
else
    echo "Devi ancora creare il progetto - step 2-hugo-new-site.sh"
fi
