#!/usr/bin/env bash

sudo groupadd aptusers

for i in $(seq -w 000 9)
do
        sudo usermod -aG aptusers "vu$i"
        sudo usermod -aG sudo "vu$i"
done

RULE="%aptusers ALL=(ALL) NOPASSWD: /usr/bin/apt, /usr/bin/apt-get"

if sudo grep -Fxq "$RULE" /etc/sudoers; then
    echo "Rule already exists in /etc/sudoers. No changes made."
    exit 0
fi

echo "$RULE" | sudo tee -a /etc/sudoers > /dev/null

echo "Done"