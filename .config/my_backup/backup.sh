#!/bin/zsh

setopt extended_glob

# Backup directory
backup_dir="$HOME/.config/my_backup"
root_dir="$backup_dir/root"

# Clear the directory except for this script
rm -rf $backup_dir/**/^$(basename $0)

mkdir -p $backup_dir
mkdir -p $root_dir

# Backup environment variables
env | sort -d > $backup_dir/envvars

# Backup installed packages
yay -Qqe > $backup_dir/packages_explicit

fcrontab -l > $backup_dir/fcrontab_michal 2> /dev/null

root_copy=(
    /etc/mkinitcpio.conf
    /etc/default/grub
    /etc/default/cpupower
    /etc/xdg/reflector/reflector.conf
    /etc/udev/rules.d
    )

for item in ${root_copy[@]}; do
    rsync -Ra $item $root_dir
done
 
# Add timestamp to backup
echo $(date +"%d.%m.%Y %H:%M:%S") > $backup_dir/timestamp

# REMINDERS:
