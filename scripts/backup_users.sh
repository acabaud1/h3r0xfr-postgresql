#!/bin/bash

psql --username=admin -vscriptdir=$PWD -d shows -f ../sql/backup_users.sql
