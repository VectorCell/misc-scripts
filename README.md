# misc-scripts

A collection of one-off scripts and such.
Scripts prefixed with `rpi-` are designed for Raspbian running on a Raspberry Pi, and will not be installed on other systems by `install.sh`.

(some of the) scripts:

### mountusb
A script I wrote because I was want to have a way to quickly mount all unmounted volumes (usually USB drives or SD cards)
without having to mess with any fstab stuff because of the temporary nature of flash drives.

Usage:
```
mountusb [options]

OPTIONS:
	-t   performs a test run, without mounting or writing anything to disk
```

### mountramdisk
Creates and mounts a temporary volume at `/mnt/ramdisk`, with a specified size in MB

Usage:
```
mountramdisk [size]

size defaults to 1024
```

### mountiso
Mounts an iso file at `/mnt/iso`

Usage:
```
mountiso file.iso
```

### mountssh
Mounts a remote directoy using sshfs

Usage:
```
mountssh [user@]address remotedir mountdir
```

### mountsamba
Mounts a remote directoy using Samba

Usage:
```
mountsamba
```
