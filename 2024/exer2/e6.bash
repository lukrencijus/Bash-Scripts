#!/usr/bin/bash

factorial() {

echo "Iveskite skaiciu, kurio faktoriala noretumete pamatyti"
read fact

if [ $fact -eq 0 ]
then
echo "$fact! = 1"

elif [ $fact -gt 0 ]
then
faktas=1

 for(( i = 1; i <= $fact; i++))
 do
 faktas=$((faktas * i))
 done

echo "$fact! = $faktas"

else
echo "Ivedete ne naturalu skaiciu, iseinama"
fi

}

echo "Pradzia"
echo "Programos pavadinimas yra $0"
factorial
echo "Pabaiga"
