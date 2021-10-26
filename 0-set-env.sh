echo - PASSO 0 - Contenuto del file 'progetto.env'
cat progetto.env
echo

if [ -f progetto.env ]
then
  export $(cat progetto.env | sed 's/#.*//g' | xargs)
fi

if [ $TEMP_HUGO_VERIFICATO == "SI" ]; then
    echo "verificato"
else
    echo
    echo "Devi editare prima il file 'progetto.env'"
    return 1
fi

echo "TUTTO OK"
