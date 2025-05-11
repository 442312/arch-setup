#!/bin/bash

text="
# Locale configuration options
# ADDED BY SETUP SCRIPT
# ===============================
LANG="en_US.UTF-8"
LANGUAGE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="ru_RU.UTF-8"
LC_TIME="ru_RU.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="ru_RU.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="ru_RU.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="ru_RU.UTF-8"
LC_TELEPHONE="ru_RU.UTF-8"
LC_MEASUREMENT="ru_RU.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
#================================
"
echo -e " $text" | sudo tee /etc/locale.conf > /dev/null
