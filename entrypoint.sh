#!/bin/bash -eu

find . -name "*.typ" | xargs typstyle $*

exit 0
