#!/bin/bash

text="
# Pacman configuration options
# ADDED BY SETUP SCRIPT
# ===============================
[options]
Color
ParallelDownloads = 10
#================================
"
sudo echo -e " $text"  >> /etc/pacman.conf
