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
sudo bash -c "echo -e " $text"  >> /etc/pacman.conf"
