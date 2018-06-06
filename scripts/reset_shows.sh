#!/bin/bash

./create_show_database.sh
./create_read_only.sh
./load_show_data.sh
./crypt_passwords.sh
./backup_users.sh
