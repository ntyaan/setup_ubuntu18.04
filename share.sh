#!/bin/sh
echo "PASSWORD" | sudo -S umount /media/sf_share_k
echo "PASSWORD" | sudo -S mount -t vboxsf share_k share
exit 0
