#!/bin/sh -eu

find $INPUT_INPUTS -name "*.typ" | xargs -r typstyle $INPUT_OPTS

exit 0
