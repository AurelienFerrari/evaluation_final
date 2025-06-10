#!/bin/bash
# Script de restauration DB (exemple PostgreSQL)
if [ -z "$1" ]; then
  echo "Usage: $0 <backup_file.sql>"
  exit 1
fi
psql $POSTGRES_URL < "$1"
echo "Restauration terminée depuis $1"
