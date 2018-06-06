#!/bin/bash
TIMEZONE="Europe/Paris"

echo "Setting timezone to $TIMEZONE..."
psql --username=admin -c "SET timezone = '$TIMEZONE'; SELECT CURRENT_TIME;"
