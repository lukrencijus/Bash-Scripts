#!/bin/bash

echo "Sarasas veikianciu procesu:"
ps aux

echo "Iveskite proceso ID kuri noretumete killinti"
read ID

if [ -z "$ID" ]
then
echo "Neteisingas proceso ID"
exit 0
fi

if ps aux | grep -q "$ID"
then
kill "$ID"
echo "Procesas su ID $ID buvo nukillintas"

else
echo "Procesas su ID $ID nerastas"
fi
