#!/bin/bash -eu

find . -name "*.typ" | xargs typstyle $INPUT_OPTS

exit 0
