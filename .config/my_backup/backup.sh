#!/bin/zsh

setopt extended_glob

# Backup directory
backup_dir="$HOME/.config/my_backup"
global_dir="$backup_dir/global"

# Clear the directory except for this script
rm -rf $backup_dir/**/^$(basename $0)

mkdir -p $backup_dir
mkdir -p $global_dir

# Backup environment variables
env | sort -d > $backup_dir/my_env

# Backup installed packages
yay -Qqe > $backup_dir/my_packages

crontab -l > $backup_dir/my_crontab

global_files=(
    /etc/anacrontab
    /etc/mkinitcpio.conf
    /etc/default/grub
    /etc/default/cpupower
    /etc/xdg/reflector/reflector.conf
    )

for file in ${global_files[@]}; do
    cp $file $global_dir/my_$(basename $file)
done
 
# Backup udev rules
mkdir -p $global_dir/udev_rules
cp /etc/udev/rules.d/* $global_dir/udev_rules

# Add timestamp to backup
echo $(date +"%d.%m.%Y %H:%M:%S") > $backup_dir/timestamp

