#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

find "$INPUT_INPUTS" -name "*.typ" | xargs -r typstyle $INPUT_OPTS
