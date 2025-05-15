#!/bin/bash
if ping -c1 10.7.7.41 > /dev/null; then
echo '401-is-UP'
else
echo '${color1}401-is-DOWN${color}'
fi
