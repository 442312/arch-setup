#!/bin/bash
if ping -c1 10.7.7.31 > /dev/null; then
echo '301-is-UP'
else
echo '${color1}301-is-DOWN${color}'
fi
