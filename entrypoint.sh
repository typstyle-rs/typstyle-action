#!/bin/bash

set -eu
shopt -s globstar

find . -name "*.typ" | xargs typstyle $*

exit 0
