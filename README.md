# alpine-nfs
Alpine+runit+NFS container. This adds a small script that adds /data/fstab.nfs to /etc/fstab and then calls mount -a -t nfs/nfs4 so all nfs mounts are mounted prior to starting runit. This is for testing rancher nfs support. You can also add runit services that will run in the container with NFS already mounted.
