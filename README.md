# etcd-backup
simple script to backup etcd to AWS S3.

## Configure
Configure with the same env vars you would use for etcdctl

```
ETCDCTL_API => etcd API version [2|3]
ETCDCTL_CACERT => Path to CA cert (if using client auth)
ETCDCTL_CERT  => Path to etcd cert (if using client auth)
ETCDCTL_KEY  => Path to etcd key (if using client auth)
ETCDCTL_ENDPOINTS => etcd endpoint (https://etcd:2379)
ETCD_BACKUP_LOCATION => location to dump etcd db locally
S3_URI => S3 uri to move backup (s3://backup-bucket/etcd)
```
