#!/bin/bash

psql --username=admin -d shows -f ../sql/check_constraints.sql
