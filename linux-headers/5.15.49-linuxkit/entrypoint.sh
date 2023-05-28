#!/bin/sh
set -e

# Mount debugfs so that it can be consumed by bpf tools
# This requires CAP_SYS_ADMIN, see https://man7.org/linux/man-pages/man2/mount.2.html
mount -t debugfs none /sys/kernel/debug

# Expose kernel pointers so that bcc can detect the syscall prefix
# This requires CAP_SYSLOG, see https://stackoverflow.com/a/55592796 and https://github.com/iovisor/bcc/issues/2670
mount -o remount,rw /proc/sys
echo 1 > /proc/sys/kernel/kptr_restrict
mount -o remount,ro /proc/sys

# Run the CMD as usual
exec "$@"
