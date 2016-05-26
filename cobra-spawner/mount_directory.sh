#!/usr/bin/env bash

DIR="/home/$NB_USER/work/drive"
if [ ! -d $DIR ]; then
    mkdir $DIR
fi
mount -t cifs //dtu-storage.win.dtu.dk/$JPY_USER $DIR -o username=$JPY_USER