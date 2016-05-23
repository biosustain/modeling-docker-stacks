#!/bin/bash
set -e

# If the run command is the default, do some initialization first
if [ "$(which "$1")" = "/usr/local/bin/start-singleuser.sh" ]; then
  # Mount user's shared folder
  : ${NOTEBOOK_DIR:=/home/$NB_USER/work}
  if [ ! -d "$NOTEBOOK_DIR/$JPY_USER" ]; then
    mkdir $NOTEBOOK_DIR/$JPY_USER
    mount -v -t cifs //dtu-storage.win.dtu.dk/$JPY_USER $NOTEBOOK_DIR/$JPY_USER -o username=$JPY_USER,password=$JPY_PASS,sec=ntlm
  fi
fi

# Run the command provided
exec "$@"
