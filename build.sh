#! /usr/bin/env bash

set -eu -o pipefail

SCRIPT=`realpath "${BASH_SOURCE[0]}"`
SCRIPT_DIR=`dirname "$SCRIPT"`
cd "$SCRIPT_DIR"
unset SCRIPT SCRIPT_DIR

readonly -a DIRS=(
basic
)
for DIR in "${DIRS[@]}"; do
	"$DIR"/build.sh
done
unset DIR
