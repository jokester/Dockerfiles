#!/bin/bash

set -ue

# before each run, ensure real data exists in /artifactory-data
for dir in data logs backup etc ; do
  if   [[ -h "/artifactory-oss/$dir" ]] ; then
    # already symlink, do nothing
    :
  elif [[ -d "/artifactory-oss/$dir" ]] && [[ -d "/artifactory-data/$dir" ]] ; then
    # when the dir exists in data volume, symlink it to artifactory home
    # the same dir in zip get removed
    rm -rf "/artifactory-oss/$dir"
    ln -s "/artifactory-data/$dir" /artifactory-oss/
  else
    # move the dir to data volume and symlink
    mv -v /artifactory-oss/$dir /artifactory-data/
    ln -s "/artifactory-data/$dir" /artifactory-oss/
  fi
done

exec /artifactory-oss/bin/artifactory.sh
