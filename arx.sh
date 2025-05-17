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
./modules/01-00-pacman-settings
./modules/01-01-pacman-mirrors-multilib
#./modules/01-02-pacman-mirrors-chaotic
./modules/01-03-locales
./modules/01-04-00-create-dir-structure
./modules/01-04-01-bash
./modules/01-04-02-shell-aliases
./modules/01-04-03-profile
./modules/01-04-04-xresources
./modules/01-04-05-xdg-user-dirs
./modules/01-04-man-db
./modules/01-05-htop
./modules/01-06-inxi
./modules/01-07-lvm2
./modules/01-08-wget
./modules/01-09-ncdu
./modules/01-10-rsync
./modules/01-11-tree 
./modules/01-12-inagemagick
./modules/01-13-mc
./modules/01-14-ranger
./modules/01-15-archivers
./modules/01-16-zsh
# vim
# tmux
# fzf
# exa 
# cryfs
# neofetch

# 02. SYSTEM SERVICES
#----------------------
# ./modules/02-00-nfs
# ./modules/02-01-wireguard
# ./modules/02-02-samba
# ./modules/02-03-tlp 
# ./modules/02-04-syncthing
# ./modules/02-05-ssh

# 03. WM
#---------------------
# ./modules/03-00-xorg
# ./modules/03-01-power-management
# ./modules/03-02-polkit
# ./modules/03-03-audio
# ./modules/03-04-rofi
# ./modules/03-05-sxhkd
./modules/03-06-conky
# qtile
# picom
# nitrogen
# tint2
# dunst
# scrot


# 04. DE
#----------------------
./modules/04-00-gnome
# kde

# 05. APPS
#----------------------
./modules/05-00-digikam
./modules/05-01-keepassxc
./modules/05-02-mpv
./modules/05-03-viewnior
./modules/05-04-chromium
./modules/05-05-firefox
./modules/05-06-obsidian
./modules/05-07-doublecmd
./modules/05-08-libreoffice
./modules/05-09-darktable
./modules/05-10-gimp
./modules/05-11-inkscape
./modules/05-12-homebank
./modules/05-13-calibre
./modules/05-14-telegram
./modules/05-15-vinagre
./modules/05-16-baobab
./modules/05-17-wine
./modules/05-18-kitty

# color chooser
# pdf
# rapid photo downloader
# qutebrowser
# qbittorrent
# blender
# freecad
# virt-manager libvirt
# local/share/applications

# 06. FLATPAK
#------------------------
# flatpak
# freeplane flatpak
# vscode flatpak
# gnome extension manager flatpak

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

