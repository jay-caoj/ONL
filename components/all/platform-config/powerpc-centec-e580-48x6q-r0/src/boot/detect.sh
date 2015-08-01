# Default platform detection.
if grep -q "^model.*: powerpc-centec-e580-48x6q-r0$" /proc/cpuinfo; then
    echo "powerpc-centec-e580-48x6q-r0" >/etc/onl_platform
    exit 0
else
    exit 1
fi

