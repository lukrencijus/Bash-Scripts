#!/bin/bash

echo "Iveskite failo pavadinima, kurio teises noretumete pakeisti tik i skaityma savyninkui"
read file

if [ -z "$file" ]
then
echo "Failo vardas negali buti tuscias"
exit 0
fi

if [ -f $file ]
then
echo "Failas yra!"
else 
echo "Failas neegzistuoja"
exit 0
fi

chmod u-w $file
echo "Failo teises sekmingai pakeistos"
