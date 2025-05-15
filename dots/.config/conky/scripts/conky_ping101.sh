#!/bin/bash
if ping -c1 10.7.7.11 > /dev/null; then
echo '101-is-UP'
else
echo '${color1}101-is-DOWN${color}'
fi
