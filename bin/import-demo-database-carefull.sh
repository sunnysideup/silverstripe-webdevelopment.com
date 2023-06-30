#!/bin/bash

# go to right folder
cd /container/application

# go offline
mv ./public/.htaccess            ./public/.htaccess.realone
mv ./public/.htaccess.offlineone ./public/.htaccess

# delete assets
rm ./public/assets/ -rf
mkdir ./public/assets/

# delete old file
rm ./demo-demo.sspak -f

# ssbak-tmp-dir
if [ ! -d "./ssbak-tmp-dir" ]; then

    # delete folder
    rm ./ssbak-tmp-dir -rf

    # create and enter
    mkdir ./ssbak-tmp-dir
    cd ./ssbak-tmp-dir

    # delete all files
    rm ./ssbak -f
    rm ./ssbak_linux_amd64.tar.gz -f
    rm ./LICENSE -f
    rm ./README.md -f

    # get new file
    wget https://github.com/axllent/ssbak/releases/download/1.1.0/ssbak_linux_amd64.tar.gz
    tar zxvf ./ssbak_linux_amd64.tar.gz
    cd ../
fi

# get sspak
wget https://admin.silverstripe-webdevelopment/demo-demo.sspak

# load sspak
./ssbak-tmp-dir/ssbak load demo-demo.sspak ./

# delete source file
rm demo-demo.sspak -f

# run a dev build to recreate anything for asses
vendor/bin/sake dev/build flush=all

# restore site!
mv ./public/.htaccess         public/.htaccess.offlineone
mv ./public/.htaccess.realone public/.htaccess

