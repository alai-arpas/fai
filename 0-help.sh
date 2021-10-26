#!/bin/bash

source ./0-set-env.sh

GIT_URL=https://github.com/alai-arpas/
echo
echo - 0 edita il file 'progetto.env'

echo - crea prima
cat progetto.env | grep TEMP_HUGO_PROJECT
echo $GIT_URL
echo
echo - 0-set-env.sh 'variabili temporanee (richiamato in ogni step)'
echo - 1-clean.sh
echo - 2-hugo-new-site.sh
echo - 3-git-init.sh
echo - 4-git-theme.sh
echo - 5-chdir.sh
