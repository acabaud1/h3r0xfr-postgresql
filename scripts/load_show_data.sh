#!/bin/bash

psql --username=admin -vscriptdir=$PWD -d shows -f ../sql/load_show_data.sql
