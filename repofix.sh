# Script to fix mirrorlist shared by ultrahacx of the androix team. 
# arkansawdave74 made it interactive by removing the --no-confirm as a default answer prevented the update.
# During update all answers should be "Yes."
#!/bin/bash

folder=manjaro-fs
folder2=androjaro-fs
if [ -d "$folder" ]; then

    rm -rf $folder/etc/pacman.d/mirrorlist
    wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Uninstall/mirrorlist -O $folder/etc/pacman.d/mirrorlist
    sed -i '1s/^/pacman-key --init \&\& pacman-key --populate \&\& pacman -Syyu\n/' $folder/root/.bash_profile
fi

if [ -d "$folder2" ]; then

    rm -rf $folder2/etc/pacman.d/mirrorlist
    wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Uninstall/mirrorlist -O $folder2/etc/pacman.d/mirrorlist
    sed -i '1s/^/sudo pacman-key --init \&\& sudo pacman-key --populate \&\& sudo pacman -Syyu\n/' $folder2/root/.bash_profile

fi
