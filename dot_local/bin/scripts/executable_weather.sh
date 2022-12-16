#!/bin/bash

wttr="$(curl -s -L wttr.in/{amritsar,calgary}?format=1 | awk '{ print $1, $NF }' | tr '\n' ' ')"
echo "$wttr"


