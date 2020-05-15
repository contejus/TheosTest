# Theos Setup on WSL (Debian, Win10 Build 18363)

1. Had to install `curl` and `wget` on Debian for toolchain setup + Theos downloads

2. Install `libncurses5` to get rid of `missing libtinfo.so.5` error (use `sudo apt-get install libncurses5`)

3. Create file at `/etc/wsl.conf` with the following contents:  
`[automount]`  
`options="metadata"`  

4. Then, in `.bashrc`, enter `umask 0002` to fix WSL permissions errors. 

5. `make package` builds .deb file, `make install` pushes file to iOS device specified by `THEOS_DEVICE_IP` in `.profile`  
    - `make do` combines the above two commands

## Sources

1. Theos GitHub Issue #421 for `/etc/wsl.conf`

2. Theos GitHub Issue #357 for `libncurses5` fix 