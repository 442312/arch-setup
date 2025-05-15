#!/bin/bash
if ping -c1 10.7.7.1 > /dev/null; then
echo '001-is-UP'
else
echo '${color1}001-is-DOWN${color}'
fi
