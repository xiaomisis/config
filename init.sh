#!/bin/sh

echo "# 1. Mobil config"

echo "[Factory reset]     - Settings > About Phone > Factory reset > Erase all data"
echo "[Developer Options] - Settings > About Phone > [7x] MIUI version"
echo "[USB debugging]     - Settings > Additional settings > Developer options > USB debugging"

echo "# 2. Laptop config"

sudo apt -qqqy install webext-ublock-origin-firefox webext-https-everywhere webext-privacy-badger
sudo apt -qqqy install fastboot adb

echo "# 3. Remove packages"

BASEDIR=$(dirname "$0")
for FILE in $(ls -1 $BASEDIR/removable_packages/*); do
  for PACKAGE in $(cat $FILE); do
    echo -n "Removing ${PACKAGE}: "
    adb shell pm uninstall -k --user 0 $PACKAGE
  done
done

#echo "# 4. Setting permissions"
#pm list permissions 
#pm list permissions -g -d | awk -F: '/permission:/ {print $2}'
