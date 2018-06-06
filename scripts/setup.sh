#!/bin/bash

brew install postgresql@10
brew services start postgresql
psql -V
