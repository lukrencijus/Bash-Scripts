#!/usr/bin/bash

echo "Iveskite vartotojo varda ir programa patikrins ar vardas atitinka kriterijus"
read name

if [ -z "$name" ]
#if [ ${#name} -eq 0 ]
then
echo "Vartotojo vardas negali buti tuscias"
exit 0

elif [[ $name =~ [0-9] ]]
then
echo "Vartotojo vardas negali tureti skaiciu"
exit 0

elif [ ${#name} -ne 4 ]
then
echo "Vartotojo vardas turi buti 4 simboliu ilgio"
exit 0

else
echo "Vartotojo vardas $name tinka!"
fi
