#!/bin/bash

# MANUAL OPERATIONS
#
# Arx script requiers sudo and git to work.

# 1. Login as root. Check if your regular user is a member of the wheel group:
# -----------
#    groups $USER
# -----------
# If there is wheel in output, go to step 2. Else run:
# -----------
#     useadd -aG wheel $USER
# -----------

# 2. Install sudo and git:
# ------------
#     pacman -S sudo git
# ------------

# 3. Cnfigure sudo:
# ------------
#    EDITOR=youreditor sudoedit /etc/sudoers
# ------------
# Uncomment line with %wheel !!!PASTE FULL LINE!!!
# Save and exit.

# 4. Log out and login as your user. Check if sudo works
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

# 7. Make all scripts executable:
# ------------
#     chmod +x arx/arx.sh
#     chmod +x arx/modules/*
#  -----------


# 8. Cd to dotfiles/scripts and run this setup script
# ------------
#     cd arch-setup/scripts
#     .00-setup
# ------------

# VARIABLES
#
# Dotfiles directory location. 
# Change path (but not a variable name!) if you whant to use your custom path.
# If you're using custom dotfiles directory, 
# kepp it's stucture the same as the home directory stucture. 
# For example look into this repo dots directory content.
# It should contain directories like .config, .local, etc. 
# Dotfiles, that should be presented at the home root,
# should be located at the root of dotfiles directory.
export arxdotdir="$(pwd)/dots"

# AUTOMATIC OPERATIONS
#
# View and comment/uncomment needed parts.
# Also review and edit scripts themeselves.

# 01. BASE
#---------
./scripts/01-00-pacman-settings
./scripts/01-01-pacman-mirrors-multilib
#./scripts/01-02-pacman-mirrors-chaotic
./scripts/01-03-locales
./scripts/01-04-00-create-dir-structure
./scripts/01-04-01-bash
./scripts/01-04-02-shell-aliases
./scripts/01-04-03-profile
./scripts/01-04-04-xresources
./scripts/01-04-05-xdg-user-dirs
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
# vim
# tmux
# fzf
# exa 
# cryfs
# neofetch

# 02. SYSTEM SERVICES
#----------------------
./scripts/02-00-nfs
./scripts/02-01-wireguard
./scripts/02-02-samba
# ./scripts/02-03-tlp 
./scripts/02-04-syncthing
./scripts/02-05-ssh

# 03. WM
#---------------------
./03-00-xorg
./03-01-power-management
./03-02-polkit
./03-03-audio
./03-04-rofi
./03-05-sxhkd
./03-06-conky
# qtile
# picom
# nitrogen
# tint2
# dunst
# scrot


# 04. DE
#----------------------
# gnome
# kde

# 05. APPS
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

# 06. FLATPAK
#------------------------
# flatpak
# freeplane flatpak
# vscode flatpak

# 07. AUR
#------------------------
# yay
# light
# jumpapp
# xidlehook

# 08. APEARANCE
#-----------------------
# fonts
# papirus-icons

# 09. END
# remove backup files arxbak
echo -e "Arch Setup Done"

