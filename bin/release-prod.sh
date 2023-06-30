#!/bin/bash

touch release-running;
touch release.log

echo "=========================" >> release.log
echo "Time: $(date). START UPDATE: " >> release.log
echo "=========================" >> release.log

date >> release.log
git describe --all --long >> release.log

git fetch --all
git checkout production
git pull origin production

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




rm release-running -f
