# Enable soft task bar
A flashable ZIP, which adds the property `qemu.hw.mainkeys=0` to the build.prop file, if that property is not specified.

## Purpose
Most devices don't have hardware keys, but only a soft task bar. In such a case, the user can choose a preferred navigation mode:
- 3 button navigation
- 2 button navigation
- Gesture navigation

Certain (older) devices (like e.g. the Galaxy Tab S2 family) have hardware keys defaulting to the 3-button navigation. The soft task bar in that case is disabled. As a consequence, it is not possible to enable gesture navigation.
This flashable ZIP sets the above property, if this property is not specified in the **build.prop** file. The result is, that next to the hardware keys, there is also the soft task bar visible. 
This allows to enable gesture navigation in the system settings, which is the only meaningful setting in that case.

## Installation
Clone this repository and execute the `create-zip.sh` script. Afterwards, flash the created ZIP file via TWRP to your ROM. It will survive an update and always adapt your build.prop.
 
## Uninstall
To get rid of the property, delete the file `/system/addon.d/63-tbprop.sh`. You can do so either from recovery or via an adb root shell.
Afterwards either manually edit the `/system/build.prop` file to remove above line and reboot, or flash the ROM again to your device to restore the original build.prop file.
