csrutil disable;
mount;
umount /Volumes/Macintosh\ HD;
mkdir /Volumes/Macintosh\ HD;
mount -t apfs -rw /dev/disk2s5 /Volumes/Macintosh\ HD;
cd /Volumes/Macintosh\ HD/System/Library/LaunchAgents;
mkdir xtemp;
mv com.apple.ManagedClientAgent.* xtemp/;
mv com.apple.mdmclient.* xtemp/;
cd ../LaunchDaemons;
mkdir xtemp;
mv com.apple.ManagedClient.* xtemp/;
mv com.apple.mdmclient.* xtemp/;
csrutil authenticated-root disable;
bless --folder /Volumes/Macintosh\ HD/System/Library/CoreServices --bootefi --create-snapshot;
echo "Sucessfully"
