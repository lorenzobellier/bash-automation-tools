#!/bin/bash
# Backup home directories of all users

BACKUP_DIR="/var/backups/home"
DATE=$(date +%F)
mkdir -p $BACKUP_DIR

for user in $(ls /home); do
  tar -czf $BACKUP_DIR/${user}_backup_$DATE.tar.gz /home/$user
done

echo "Backup completed for all users."
