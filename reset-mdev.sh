mdevctl list | awk '{print $1}' > /tmp/mdev-devices
cat /tmp/mdev-devices | xargs -i mdevctl stop -u {}
cat /tmp/mdev-devices | xargs -i mdevctl undefine -u {}
./mdev.sh
