#!/bin/bash

source ./0-set-env.sh
ls progetto*.env | xargs -n 1 basename > lista_progetti.txt
GIT_URL=$GITHUB$TEMP_HUGO_PROJECT
echo
echo - 0 il progetto nel file __CURRENT__.txt è $TEMP_HUGO_FAI_PROJECT

echo - crea prima
echo $GITHUB; cat $TEMP_HUGO_FAI_PROJECT | grep TEMP_HUGO_PROJECT;
echo $GIT_URL
echo
cat progetto.env | grep TEMP_HUGO_VERIFICATO
echo - 0-set-env.sh 'variabili temporanee (richiamato in ogni step)'
echo - 1-clean.sh
echo - 2-hugo-new-site.sh
echo - 3-git-init.sh
echo - 4-git-theme.sh
echo - 5-chdir.sh
echo - 6-copy-files.sh

