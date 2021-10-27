#!/bin/bash

source ./0-set-env.sh
PROGETTO=$TEMP_HUGO_DIR$TEMP_HUGO_PROJECT
# 
echo - PASSO 4 - aggiunge thema

if test -d "$PROGETTO"; then
    dir_precedente=$(pwd)
    cd $PROGETTO
    #cd themes
    git submodule add $TEMP_HUGO_SUB_THEMES $TEMP_HUGO_SUB_THEMES_NAME
    #cd ..
    git add .
    git commit -m "aggiunto themes"
    git push
    cd $dir_precedente
else
    echo "Devi ancora creare il progetto - step 2-hugo-new-site.sh"
fi
