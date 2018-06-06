#!/bin/bash

psql --username=readonly -d shows -f ../sql/check_read_only.sql
