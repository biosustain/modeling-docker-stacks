#!/bin/bash
set -e

if [ "$(which "$1")" = "/usr/local/bin/start-singleuser.sh" ]; then
  : ${NOTEBOOK_DIR:=/home/$NB_USER/work}
fi

exec "$@"
