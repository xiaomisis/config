#!/bin/sh

echo "# 1. Mobil config"

echo "[Factory reset]     - Settings > About Phone > Factory reset > Erase all data"
echo "[Developer Options] - Settings > About Phone > [7x] MIUI version"
echo "[USB debugging]     - Settings > Additional settings > Developer options > USB debugging"

echo "# 2. Laptop config"

sudo apt -qqqy install webext-ublock-origin-firefox webext-https-everywhere webext-privacy-badger
sudo apt -qqqy install fastboot adb
