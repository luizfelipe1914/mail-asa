#!/bin/bash

for x in $(cat users.txt); do
    mkdir -p /var/users/
    useradd -m -b /var/users -s /bin/sh $(echo $x | cut -d, -f1) -c "$(echo $x | cut -d, -f1)"
    chown -R $(echo $x | cut -d, -f1):postfix /var/users/$(echo $x | cut -d, -f1)
    echo "$(echo $x | cut -d, -f1):123@senha" | chpasswd
done

rm -f users.txt config.sh
