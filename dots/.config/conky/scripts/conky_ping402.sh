#!/bin/bash
if ping -c1 10.7.7.42 > /dev/null; then
echo '402-is-UP'
else
echo '${color1}402-is-DOWN${color}'
fi
