# make our custom binaries visible
PATH=/system/sdcard/bin:$PATH

# overlay new busybox commands over system ones
. ~/.busybox_aliases

# load some convenience functions
. /system/sdcard/scripts/common_functions.sh

alias l='ls -alt'

cd /system/sdcard

[[ -s ~/.githubcreds ]] && source ~/.githubcreds