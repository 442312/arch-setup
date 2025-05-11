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
echo -e " $text" | sudo tee -a /etc/pacman.conf
