#!/bin/bash

echo "Connecting to server with user 'admin'..."

echo "*:*:*:admin:admin42" > $HOME/.pgpass
chmod 0600 $HOME/.pgpass
psql --username=admin
