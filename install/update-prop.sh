#!/sbin/sh

#
# Depending on the recovery, the /system partition may
# be mounted under /system/system - so we need to use this script
# to find out about that
#
if [ -d /system/system ]; then
  PROP_FILE="/system/system/build.prop"
elif [ -d /system_root ]; then
  PROP_FILE="/system_root/system/build.prop"
else
  PROP_FILE="/system/build.prop"
fi

matching=$(grep "qemu.hw.mainkeys" "$PROP_FILE")
if [ -z $matching ]; then
  echo " " >> "$PROP_FILE"
  echo "# Enable Taskbar" >> "$PROP_FILE"
  echo "qemu.hw.mainkeys=0" >> "$PROP_FILE"
fi
