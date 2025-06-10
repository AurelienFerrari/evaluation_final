# Procédure détaillée de rollback

1. Identifier le snapshot à restaurer
2. Arrêter les services impactés (`systemctl stop api`)
3. Restaurer les données (`bash ../snapshots/restore.sh <backup_file.sql>`)
4. Redémarrer les services (`systemctl start api`)
5. Vérifier le bon fonctionnement
