#!/bin/sh

. /system/sdcard/scripts/common_functions.sh

if [ ! -e /system/sdcard/config/ir_led.conf ]; then
	echo "OFF" > /system/sdcard/config/ir_led.conf
fi
val=$( cat /system/sdcard/config/ir_led.conf | tr '[:upper:]' '[:lower:]' )
ir_led $val


if [ ! -e /system/sdcard/config/ir_cut.conf ]; then
	echo "OFF" > /system/sdcard/config/ir_cut.conf
fi
val=$( cat /system/sdcard/config/ir_cut.conf | tr '[:upper:]' '[:lower:]' )
ir_cut $val


if [ ! -e /system/sdcard/config/yellow_led.conf ]; then
	echo "OFF" > /system/sdcard/config/yellow_led.conf
fi
val=$( cat /system/sdcard/config/yellow_led.conf | tr '[:upper:]' '[:lower:]' )
yellow_led $val


if [ ! -e /system/sdcard/config/blue_led.conf ]; then
	echo "OFF" > /system/sdcard/config/blue_led.conf
fi
val=$( cat /system/sdcard/config/blue_led.conf | tr '[:upper:]' '[:lower:]' )
blue_led $val


if [ ! -e /system/sdcard/config/rtsp_nightvision.conf ]; then
	echo "0" > /system/sdcard/config/rtsp_nightvision.conf
fi
val=$( cat /system/sdcard/config/rtsp_nightvision.conf )
/system/sdcard/bin/setconf -k n -v $val
