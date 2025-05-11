#!/bin/bash

text="
# Pacman MULTILIB repository
# ADDED BY SETUP SCRIPT
# ===============================
[multilib]
Include = /etc/pacman.d/mirrorlist
#================================
"
echo -e " $text"  >> /etc/pacman.conf
pacman -Syyu --noconfirm
