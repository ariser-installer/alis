# alis

![Arch Linux](https://raw.githubusercontent.com/picodotdev/alis/main/images/archlinux-badge.svg)
![Bash](https://raw.githubusercontent.com/picodotdev/alis/main/images/sh-bash-badge.svg)
![Shellcheck](https://github.com/picodotdev/alis/actions/workflows/shellcheck.yml/badge.svg)

Arch Linux Install Script (or alis, also known as _the Arch Linux executable installation guide and wiki_) installs an unattended, automated and customized Arch Linux system.

alis is a simple Bash script developed from many Arch Linux Wiki pages that fully automates the installation of an [Arch Linux](https://archlinux.org/) system after booting from the original Arch Linux installation media.

It contains the same commands that you would type and execute one by one interactively to complete the installation. The only user intervention needed is to edit a configuration file to choose the installation options and preferences from partitioning, to encryption, bootloader, file system, language and keyboard mapping, desktop environment, kernels, packages to install and graphic drivers. This automation makes the installation easy and fast, as fast as your internet connection allows.

If some time later after a system update, for any reason the system does not boot correctly, a recovery script is also provided to enter into a recovery mode that allows you to downgrade packages or execute any other commands to restore the system. Also, a log of the installation can be taken with <a href="https://asciinema.org/">asciinema</a>.

A simple powerful Bash based script for an unattended, easy and fast way to install Arch Linux.<br>
Boot. Get. Configure. Install. Enjoy.

**Warning! This script can delete all partitions of the persistent storage. It is recommended to test it first in a virtual machine like <a href="https://www.virtualbox.org/">VirtualBox</a>.**

Currently these scripts are for me, but maybe they are useful for you too.

Follow the [Arch Way](https://wiki.archlinux.org/title/Arch_Linux) of doing things and learn what this script does. This will allow you to know what is happening.

Please, don't ask for support for this script in Arch Linux forums, first read the [Arch Linux wiki](https://wiki.archlinux.org), the [Installation Guide](https://wiki.archlinux.org/title/Installation_guide) and the [General Recommendations](https://wiki.archlinux.org/title/General_recommendations), later compare those commands with the commands of this script.

For new features, improvements and bugs, fill an issue in GitHub or make a pull request. You can test it in a virtual machine (strongly recommended) like [VirtualBox](https://www.virtualbox.org/) before you run it in real hardware. If you test it in real hardware, please send me an email to pico.dev@gmail.com with the machine description and tell me if something goes wrong or all works fine. [Pull request](https://github.com/picodotdev/alis/pulls) and [new feature request](https://github.com/picodotdev/alis/issues) are welcome!

**Arch Linux Install Script (alis) is based on Arch Linux but is NOT approved, sponsored, or affiliated with Arch Linux or its related projects.**

[![Arch Linux](https://raw.githubusercontent.com/picodotdev/alis/main/images/archlinux.svg "Arch Linux")](https://www.archlinux.org/)


## Create VirtualBox images with Packer

VirtualBox and packer - (https://packer.io/) are required on the hostmachine. Install them with the script

```
$ install-packer-extras.sh on real metal!
```

```
$ ./alis-packer.sh
```

## Arch Linux Installation Media

https://www.archlinux.org/download/

## Reference

* https://archlinux.org/pacman/pacman.conf.5.html#_repository_sections
* https://gitlab.archlinux.org/archlinux/archiso/-/blob/master/configs/releng/packages.x86_64
* https://tldp.org/LDP/abs/html/
* https://tldp.org/LDP/Bash-Beginners-Guide/html/
* https://wiki.archlinux.org/title/AMDGPU
* https://wiki.archlinux.org/title/Arch_User_Repository
* https://wiki.archlinux.org/title/ATI
* https://wiki.archlinux.org/title/Awesome
* https://wiki.archlinux.org/title/Bluetooth
* https://wiki.archlinux.org/title/Bspwm
* https://wiki.archlinux.org/title/Btrfs
* https://wiki.archlinux.org/title/Budgie
* https://wiki.archlinux.org/title/Category:Boot_loaders
* https://wiki.archlinux.org/title/Cloud-init
* https://wiki.archlinux.org/title/Command-line_shell
* https://wiki.archlinux.org/title/Deepin_Desktop_Environment
* https://wiki.archlinux.org/title/Desktop_environment
* https://wiki.archlinux.org/title/Dm-crypt
* https://wiki.archlinux.org/title/Dm-crypt/Device_encryption
* https://wiki.archlinux.org/title/Dm-crypt/Encrypting_an_entire_system
* https://github.com/bakkeby/dusk
* https://wiki.archlinux.org/title/EFI_System_Partition
* https://wiki.archlinux.org/title/Ext4
* https://wiki.archlinux.org/title/F2FS
* https://wiki.archlinux.org/title/File_systems
* https://wiki.archlinux.org/title/Fstab
* https://wiki.archlinux.org/title/General_recommendations
* https://wiki.archlinux.org/title/GNOME
* https://wiki.archlinux.org/title/GRUB
* https://wiki.archlinux.org/title/Hardware_video_acceleration
* https://wiki.archlinux.org/title/I3
* https://wiki.archlinux.org/title/Install_Arch_Linux_via_SSH
* https://wiki.archlinux.org/title/Installation_guide
* https://wiki.archlinux.org/title/Intel_graphics
* https://wiki.archlinux.org/title/Intel_NUC
* https://wiki.archlinux.org/title/KDE
* https://wiki.archlinux.org/title/Kernel_mode_setting
* https://wiki.archlinux.org/title/Kernel_parameters
* https://wiki.archlinux.org/title/Kernels
* https://wiki.archlinux.org/title/LeftWM
* https://wiki.archlinux.org/title/List_of_applications
* https://wiki.archlinux.org/title/LVM
* https://wiki.archlinux.org/title/Main_page
* https://wiki.archlinux.org/title/Microcode
* https://wiki.archlinux.org/title/Mirrors
* https://wiki.archlinux.org/title/Mkinitcpio
* https://wiki.archlinux.org/title/Network_configuration
* https://wiki.archlinux.org/title/NetworkManager
* https://wiki.archlinux.org/title/Nouveau
* https://wiki.archlinux.org/title/NVIDIA
* https://wiki.archlinux.org/title/Openbox
* https://wiki.archlinux.org/title/Pacman
* https://wiki.archlinux.org/title/Partitioning
* https://wiki.archlinux.org/title/Persistent_block_device_naming
* https://wiki.archlinux.org/title/PipeWire
* https://wiki.archlinux.org/title/Qtile
* https://wiki.archlinux.org/title/REFInd
* https://wiki.archlinux.org/title/Reflector
* https://wiki.archlinux.org/title/Unified_Extensible_Firmware_Interface/Secure_Boot
* https://wiki.archlinux.org/title/Solid_state_drive/NVMe
* https://wiki.archlinux.org/title/Solid_State_Drives
* https://wiki.archlinux.org/title/Swap
* https://wiki.archlinux.org/title/Systemd
* https://wiki.archlinux.org/title/Systemd#GPT_partition_automounting
* https://wiki.archlinux.org/title/Systemd-boot
* https://wiki.archlinux.org/title/Systemd-homed
* https://wiki.archlinux.org/title/Unified_Extensible_Firmware_Interface
* https://wiki.archlinux.org/title/VirtualBox
* https://wiki.archlinux.org/title/Wayland
* https://wiki.archlinux.org/title/Wireless_network_configuration
* https://wiki.archlinux.org/title/Wireless_network_configuration#Connect_to_an_access_point
* https://wiki.archlinux.org/title/Xfce
* https://wiki.archlinux.org/title/XFS
* https://wiki.archlinux.org/title/Xorg

