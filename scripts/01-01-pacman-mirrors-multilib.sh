#!/bin/bash

text="
# Pacman MULTILIB repository
# ADDED BY SETUP SCRIPT
# ===============================
[multilib]
Include = /etc/pacman.d/mirrorlist
#================================
"
echo -e " $text" | sudo tee -a /etc/pacman.conf"
sudo pacman -Syu --noconfirm
