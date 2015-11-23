#! /bin/sh

if [ -f /data/fstab.nfs ]; then
    cat /data/fstab.nfs >> /etc/fstab
fi

mount -a -t nfs
mount -a -t nfs4

