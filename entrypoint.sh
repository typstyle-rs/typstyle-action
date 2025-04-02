#!/bin/bash -eu

find . -name "*.typ" | xargs -r typstyle $INPUT_OPTS

exit 0
