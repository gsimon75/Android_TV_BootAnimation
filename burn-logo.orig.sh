#!/system/bin/sh

usbpath="/mnt"
for path in $usbpath/*
do
    if [ -e $path/custom_upgrade/logo.img ]
    then
        echo "now we are in "$path""  > /dev/console
		echo "burn logo start" > /dev/console

		dd if=$path/custom_upgrade/logo.img of=/dev/block/platform/hi_mci.1/by-name/logo > /dev/console

		echo "burn logo end" > /dev/console
		sync
		break
    fi
done
                                                                                                                                              