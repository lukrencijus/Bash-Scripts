#!/bin/bash

echo "Iveskite failo pavadinima, kurio atsargine kopija noretumete padaryti"
read file

if [ -z "$file" ]
then
echo "Failo vardas negali buti tuscias"
exit 0
fi

if [ -f "$file" ]
then
echo "Failas yra!"
else 
echo "Failas neegzistuoja"
exit 0
fi

timestamp=$(date +"%Y%m%d")

backup_file="${file}_backup_${timestamp}"

cp "$file" "$backup_file"
echo "Atsargine kopija sukurta pavadinimu: $backup_file"
