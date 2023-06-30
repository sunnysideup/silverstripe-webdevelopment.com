#!/bin/bash

cd /container/application

# public stuff
rm ./public/demo-demo.sspak -f
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

./ssbak-tmp-dir/ssbak save ./ ./demo-demo.sspak

mv ./demo-demo.sspak public/

