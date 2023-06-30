#!/bin/bash

touch release-running;
touch release.log

echo "=========================" >> release.log
echo "Time: $(date). START UPDATE: " >> release.log
echo "=========================" >> release.log

date >> release.log
git describe --all --long >> release.log

git fetch --all
git checkout develop
git pull origin develop

composer install --prefer-dist --no-dev
# vendor/bin/sake dev/build flush=all
# source ./share-vendor-folder.sh

vendor/bin/sake dev/build flush=all
git describe --all --long >> release.log


echo "=========================" >> release.log
echo "DONE" >> release.log
echo "=========================" >> release.log
echo "" >> release.log
echo "" >> release.log

##########################################
# https://demo.sunnysideup.co.nz
##########################################

# Get the current Git hash
GIT_HASH=$(git rev-parse HEAD)

# OR set variable in .env file as above
source .env

# Append Git hash to the fixed URL
URL_WITH_HASH="${FIA_RELEASE_PING_URL}${GIT_HASH}"

# Use wget to open the URL
wget -S -qO- "${URL_WITH_HASH}"

echo ""
echo "DONE"
echo ""




rm release-running -f
