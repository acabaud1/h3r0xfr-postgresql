#!/bin/bash

psql --username=admin -d shows -f ../sql/crypt_passwords.sql
