#!/bin/sh

for I in $(seq 10); do
    II=$(printf "%02i\n" $I)
    USER="user-$II"
    if useradd --create-home --user-group --shell /usr/bin/bash $USER;then
	echo "$USER:$USER" | chpasswd
    fi
done
