export $(cat __CURRENT__.txt | sed 's/#.*//g' | xargs)

echo - PASSO 0 - Contenuto del file $TEMP_HUGO_FAI_PROJECT

cat $TEMP_HUGO_FAI_PROJECT
echo

if [ -f $TEMP_HUGO_FAI_PROJECT ]
then
  export $(cat $TEMP_HUGO_FAI_PROJECT | sed 's/#.*//g' | xargs)
fi

if [ $TEMP_HUGO_VERIFICATO == "SI" ]; then
    echo "verificato"
else
    echo
    echo '*******************************************************************'
    echo "TEMP_HUGO_VERIFICATO è in modalità sicurezza" 
    echo "Devi editare prima il file $TEMP_HUGO_FAI_PROJECT e settare TEMP_HUGO_VERIFICATO=SI"
    echo '*******************************************************************'
    return 1
fi

echo "TUTTO OK"
