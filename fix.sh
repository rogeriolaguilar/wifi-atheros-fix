#! /bin/bash
hw3=/lib/firmware/ath10k/QCA6174/hw3.0

mkdir -p backup
cp -r $hw3/ backup/$(date '+%Y%m%d_%H.%m.%S.%N')hw3.0/
rm $hw3/* 2> /dev/null
cp board-2.bin  $hw3/board.bin
cp firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1 $hw3/firmware-4.bin
chmod +x $hw3/*

echo 'New Ahteros hw3.0 files: '
ls -la $hw3/
echo 'RESTART TO APPLY CHANGES!'
