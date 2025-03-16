#!/usr/bin/env bash

if [ $# -eq 0 ]; then
        echo "Įveskite username, kurį norite patikrinti"
        read username
else
        username="$1"
fi

echo "Tikrinama:"
echo "Ar 5 simbolių ilgio?"
sleep 1
if [ ${#username} -gt 4 ]; then
        echo "Taip"
        echo "Ar sudarytas tik iš skaičių ir raidžių?"
        sleep 1
        if [[ "$username" =~ ^[a-zA-Z0-9]+$ ]]; then
                echo "Taip"
                echo "Jūsų username atitinka"
        else
                echo "Ne"
        fi
else
        echo "Ne"
fi