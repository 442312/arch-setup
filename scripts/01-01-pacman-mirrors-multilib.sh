#!/bin/bash

text="
# Pacman MULTILIB repository
# ADDED BY SETUP SCRIPT
# ===============================
[multilib]
Include = /etc/pacman.d/mirrorlist
#================================
"
sudo bash -c "echo -e " $text"  >> /etc/pacman.conf"
sudo pacman -Syu --noconfirm
