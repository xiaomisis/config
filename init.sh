#!/bin/sh

echo "[Factory reset]     - Settings > About Phone > Factory reset > Erase all data"
echo "[Developer Options] - Settings > About Phone > [7x] MIUI version"
echo "[USB debugging]     - Settings > Additional settings > Developer options > USB debugging"

sudo apt -y install webext-ublock-origin-firefox webext-https-everywhere webext-privacy-badger
sudo apt-get -y install fastboot adb
