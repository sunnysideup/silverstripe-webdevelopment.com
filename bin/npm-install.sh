#!/bin/bash
source ~/.nvm/nvm.sh
nvm use node
sudo npm install -g npm

cd themes/sswebpack_engine_only/
npm i
npm audit fix
cd -
cd themes/theme-info-only/my_node_modules/
npm i
cd -
