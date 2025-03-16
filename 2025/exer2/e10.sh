#!/usr/bin/env bash

ps aux

echo "Įveskite proceso ID, kurį norėtumėte nukilinti"
read id

kill -9 "$id"