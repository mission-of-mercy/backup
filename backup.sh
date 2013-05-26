cd /home/deploy/backup
source config/settings
BACKUP_FILE="`date \+\\%Y_\\%m_\\%d_\\%H_\\%M`.sql.bz2"
pg_dump --clean --no-owner --no-privileges -h localhost -U momma momma-production | bzip2 > $BACKUP_FILE
rsync -e ssh -av $BACKUP_FILE $BACKUP_URL
rm $BACKUP_FILE
