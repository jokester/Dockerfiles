#!/bin/bash

set -e

# seed /data with configuration template
seed-data-volume () {
  mkdir -pv /data/logs

  for fn in env domains.txt ; do
    [[ -e /data/$fn ]] || cp -v /data-seed/$fn /data/
  done

  # always overwrite README.md
  cp -v /data-seed/Readme.md /data/

  # config template (letsencrypt.sh will find it and use /data as $BASEDIR)
  if [[ ! -e /data/config.sh ]]; then
    cp -v "$LE_PATH/docs/examples/config.sh.example" /data/config.sh
  fi

  # nobody than root should touch them
  chmod 0600 /data/{config.sh,domains.txt,env}
}

run-letsencrypt () {
  local log_filename="/data/logs/$(TZ=UTC date '+%Y-%m-%d_%H:%M:%S')_UTC.log"

  source /data/env

  if [[ "$PROVIDER" == "" ]]; then
    echo '$PROVIDER and other credentials are required' \
      | tee "$log_filename"
    exit 1
  else
    bash "$LE_PATH/letsencrypt.sh" --cron --hook "$LE_PATH/lexicon-hook.sh" --challenge "dns-01" \
      2>&1 | tee -a "$log_filename"
    "$LE_PATH/letsencrypt.sh" --cleanup \
      2>&1 | tee -a "$log_filename"
  fi
}

seed-data-volume

run-letsencrypt
