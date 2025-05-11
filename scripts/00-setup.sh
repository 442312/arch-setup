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
#     .00-setup.sh
# ------------

# AUTOMATIC OPERATIONS
#
# View and comment/uncomment needed parts.
# Also review and edit scripts themeselves.

# 01. BASE
./01-00-pacman-settings.sh &&
./01-01-pacman-mirrors-multilib.sh &&
# sudo ./01-02-pacman-mirrors-chaotic.sh &&

