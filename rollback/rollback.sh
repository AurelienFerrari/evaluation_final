#!/bin/bash
# Script automatisé de rollback
if [ -z "$1" ]; then
  echo "Usage: $0 <backup_file.sql>"
  exit 1
fi
systemctl stop api
bash ../snapshots/restore.sh "$1"
systemctl start api
echo "Rollback terminé."
