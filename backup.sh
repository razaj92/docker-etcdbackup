#! /bin/bash
set -e

DATE=`date '+%Y%m%d%H%M%S'`
ETCD_SNAPSHOT=${ETCD_BACKUP_LOCATION}/snapshot-${DATE}.db

echo "Creating snapshot of etcd [${ETCD_SNAPSHOT}]"
etcdctl snapshot save ${ETCD_SNAPSHOT}
echo "Backing up snapshot to S3 [${S3_URI}/snapshot-${DATE}.db]"
aws s3 cp ${ETCD_SNAPSHOT} ${S3_URI}/snapshot-${DATE}.db
echo "Finished Backup"
