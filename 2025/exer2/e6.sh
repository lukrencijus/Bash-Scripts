#!/usr/bin/env bash


if [ $# -eq 0 ]; then
        echo "Įveskite skaičių, kurio modulį norite apskaičiuoti"
        read num
else
        num="$1"
fi

factorial () {
fact=1
while [ $num -gt 1 ]
do
        fact=$((fact * num))
        num=$((num - 1))
done
echo $fact
}

factorial