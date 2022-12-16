#!/bin/bash

wttr="$(curl -s -L wttr.in/Amritsar?format=1)"
echo "${wttr##* }"


