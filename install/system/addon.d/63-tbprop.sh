#!/sbin/sh
#
# ADDOND_VERSION=2
#

. /tmp/backuptool.functions

case "$1" in
  backup)
    # Stub
  ;;
  restore)
    matching=$(grep "qemu.hw.mainkeys" $S/build.prop)
    if [ -z $matching ]; then
      echo " " >> $S/build.prop
      echo "# Enable Taskbar" >> $S/build.prop
      echo "qemu.hw.mainkeys=0" >> $S/build.prop
    fi
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
