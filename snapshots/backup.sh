#!/bin/bash
# Script de sauvegarde DB (exemple PostgreSQL)
date=$(date +"%Y%m%d_%H%M%S")
pg_dump $POSTGRES_URL > "backup_$date.sql"
echo "Backup terminé : backup_$date.sql"
