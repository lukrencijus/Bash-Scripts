#!/usr/bin/bash

echo "Salyga"

if [ $# -eq 0 ]
then
echo "Programos vykdymui butina nurodyti bent viena papildoma parametra"
exit 0
fi

echo "Programos pavadinimas yra $0"
echo "Pirmas parametras yra: $1"
if [ -f $1 ]
then
echo "Failas yra!"
echo "-----------------------"
cat -n $1
echo "-----------------------"
else 
touch $1
echo "Failas neegzistuoja, sukuriamas"
fi

echo "Pabaiga"
