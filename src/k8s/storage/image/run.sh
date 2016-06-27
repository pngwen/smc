#!/bin/sh

set -e

rm -rf /var/lib/glusterd
mkdir -p /brick/glusterd
ln -s /brick/glusterd /var/lib/glusterd
service glusterfs-server start

mkdir -p /var/log/glusterfs/
touch /var/log/glusterfs/glustershd.log
tail -f /var/log/glusterfs/glustershd.log

while true; do
    sleep 5
done