# bash file per creazione
dir_precedente=$(pwd)
progetto=$1
nome_progetto=$2
cd $progetto
echo 1 $progetto

git init .
git add .
git commit -m "first commit"
# git remote add origin git@github.com:alai-arpas/$nome_progetto.git
# git push --set-upstream origin master
git remote -v

cd $dir_precedente
