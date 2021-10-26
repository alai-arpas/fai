#!/bin/bash

source ./0-set-env.sh
PROGETTO=$TEMP_HUGO_DIR$TEMP_HUGO_PROJECT
# 
echo - PASSO 3 - git init

if test -d "$PROGETTO"; then
    dir_precedente=$(pwd)
    cd $PROGETTO
    git init .
    git add .
    git commit -m "first commit"
    git remote add origin git@github.com:alai-arpas/$TEMP_HUGO_PROJECT.git
    git push --set-upstream origin master
    cd $dir_precedente
else
    echo "Devi ancora creare il progetto - step 2-hugo-new-site.sh"
fi
