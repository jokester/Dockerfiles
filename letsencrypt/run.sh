#!/bin/bash

set -ue

source /$LE_PATH/env

exec bash --login -i

# echo "Running DNS challenge with PROVIDER=${PROVIDER}"
# exec "/$LE_PATH/letsencrypt.sh" --cron --hook "/$LE_PATH/lexicon-hook.sh" --challenge "dns-01"
