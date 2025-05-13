#!/bin/bash

# MANUAL OPERATIONS
#
# Setup script requiers sudo vim and git to work.
# Next add your user to the wheel group, install 
# dependensies and configure sudo.

# 1. Login as root. Check if your regular user is a member of the wheel group:
# -----------
#    groups $USER
# -----------
# If there is wheel in output, go to step 2. Else run:
# -----------
#     useadd -aG wheel $USER
# -----------

# 2. Install sudo, vim and git:
# ------------
#     pacman -S sudo vim git
# ------------

# 3. Cnfigure sudo:
# ------------
#    vim /etc/sudoers
# ------------
# Uncomment line with %wheel !!!PASTE FULL LINE!!!
# Type :wq! to save changes and quit vim.

# 4. Log uot and login as your user. Check if sudo works
#-------------
#    sudo pacman -Syu
# ------------
# If it doesn't work, reboot system.

# 5. Login as your user.
# Make a directory .config and cd to it
# ------------
#     mkdir .config
#     cd .config
# ------------

# 6. Clone dotfiles repository
# ------------
#     git clone !!!ADD LINK HERE!!!
# ------------

# 7. Make all script executable:
# ------------
#     chmod +x arch-setup/scripts/*
#  -----------


# 8. Cd to dotfiles/scripts and run this setup script
# ------------
#     cd arch-setup/scripts
#     .00-setup
# ------------

# AUTOMATIC OPERATIONS
#
# View and comment/uncomment needed parts.
# Also review and edit scripts themeselves.

# 01. BASE-1
./scripts/01-00-pacman-settings
./scripts/01-01-pacman-mirrors-multilib
#./scripts/01-02-pacman-mirrors-chaotic
./scripts/01-03-locales
./scripts/01-04-00-create-dir-structure
./scripts/01-04-man-db
./scripts/01-05-htop
./scripts/01-06-inxi
./scripts/01-07-lvm2
./scripts/01-08-wget
./scripts/01-09-ncdu
./scripts/01-10-rsync
./scripts/01-11-tree 
./scripts/01-12-inagemagick
./scripts/01-13-mc
./scripts/01-14-ranger
./scripts/01-15-archivers
./scripts/01-16-zsh
# mc
# bash
# aliases
# tmux
# user-dirs
# xresources
# vim


# fzf
# exa 
# cryfs



# 03 SYSTEM SERVICES
#----------------------
# nfs-utils
# wireguard
# samba
# tlp 
# syncthing
# ssh



# APPS
#----------------------
# digikam
# color chooser
# keepassxc
# mpv
# viewnior
# chromium
# firefox
# pdf
# rapid photo downloader
# qutebrowser
# qbittorrent
# obsidian
# doublecommander
# libreoffice
# darktable
# gimp
# inkscape
# blender
# freecad
# homebank
# calibre
# telegram
# vinagre
# baobab
# virt-manager libvirt
# wine
# local/share/applications
# kitty

# APEARANCE
#-----------------------
# fonts
# papirus-icons


# FLATPAK
#------------------------
# flatpak
# freeplane flatpak
# vscode flatpak

# DE
#----------------------
# gnome
# kde

# # WM
#---------------------
# batsignal
# rofi
# polkit
# sxhkd
# qtile
# xorg
# xorg-xinit
# picom
# pulseaudio
# pamixer
# nitrogen
# neofetch
# i3lock
# conky
# tint2
# dunst
# scrot
# xss-lock

# AUR
#------------------------
# yay
# light
# jumpapp
# xidlehook


# 10. END
# remove backup files arxbak
echo -e "Arch Setup Done"

