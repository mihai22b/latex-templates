#! /usr/bin/env bash

set -eu -o pipefail

SCRIPT=`realpath "${BASH_SOURCE[0]}"`
SCRIPT_DIR=`dirname "$SCRIPT"`
cd "$SCRIPT_DIR"
unset SCRIPT SCRIPT_DIR

FILE_BASE='fonts'

for I in {1..2}; do
	xelatex "$FILE_BASE".tex
done
unset I

for EXT in \
	aux \
	log \
	; do
	rm "$FILE_BASE"."$EXT"
done
unset EXT
