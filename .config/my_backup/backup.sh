#!/bin/bash

# Backup directory
backup_dir="/home/michal/.config/my_backup"

# Create the backup directory if it doesn't exist
mkdir -p $backup_dir

# Backup environment variables
env > $backup_dir/my_env

# Back up installed packages
yay -Qqe > $backup_dir/my_packages

# Backup user crontab
crontab -l > $backup_dir/my_crontab

# Backup system configuration files
cp /etc/default/{grub,cpupower} $backup_dir/
cp /etc/xdg/reflector/reflector.conf $backup_dir/reflector.conf

# Add timestamp to backup
timestamp=$(date +"%Y%m%d%H%M%S")
rm $backup_dir/*.timestamp
touch $backup_dir/${timestamp}.timestamp

