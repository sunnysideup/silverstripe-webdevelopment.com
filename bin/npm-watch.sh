#!/bin/bash
source ~/.nvm/nvm.sh
nvm use node
rm public/cache -rf
sudo rm themes/theme-info-only/dist/*.gz -rf
cd themes/sswebpack_engine_only/
npm install
npm run watch --theme-dir=/themes/theme-info-only
#npm run dev-server -- --port 3000 
