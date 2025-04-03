#!/vendor/bin/sh

log_msg() {
    echo "$1" | tee /dev/kmsg
}

log_msg "===== FunctionFS Debugging ====="

# Check USB properties
log_msg "[0] Checking system properties for USB..."
log_msg "$(getprop | grep usb)"

# Check FunctionFS directories
log_msg "[1] Checking FunctionFS directories..."
log_msg "$(ls /sys/class/udc 2>&1)"

# Check if FunctionFS is present
log_msg "[2] Checking FunctionFS mount points..."
log_msg "$(ls -l /dev/usb-ffs 2>&1)"
log_msg "$(ls -l /dev/usb-ffs/* 2>&1)"
log_msg "$(ls -l /dev | grep ffs 2>&1)"
log_msg "$(cat /proc/filesystems 2>&1)"
log_msg "$(mount | grep ffs 2>&1)"
log_msg "$(mount | grep config 2>&1)"
log_msg "$(find /config -exec ls -l {} \; 2>&1)"
log_msg "$(find /config -print -exec cat {} \; 2>/dev/null)"

# Check dmesg logs
log_msg "[3] Checking kernel logs for USB and FunctionFS..."
log_msg "$(dmesg | grep -i usb)"
log_msg "$(dmesg | grep -i functionfs)"
log_msg "$(dmesg | grep -i ffs)"

# Try manually mounting FunctionFS
log_msg "[5] Attempting to manually mount FunctionFS..."
mkdir -p /dev/usb-ffs/adb
log_msg "$(mount -t functionfs adb /dev/usb-ffs/adb 2>&1)"

touch /cache/testfilenate

log_msg "===== Debugging Completed ====="

