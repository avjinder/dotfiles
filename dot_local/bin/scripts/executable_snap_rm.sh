#!/bin/bash

set -eu

LANG=C snap list --all | awk '/disabled/{print $1, $3}' | while read -r snapname revision; do
	snap remove "$snapname" --revision="$revision"
done
