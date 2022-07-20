#!/usr/bin/env bash
set -eou pipefail
echo $BASH_VERSION

start_time=$(date +%s)

forge --version > VERSION.txt
forge fmt --help

echo "Finished in" $(date +%s) - $start_time "seconds"
