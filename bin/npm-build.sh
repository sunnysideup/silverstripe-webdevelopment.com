#!/bin/bash
# cd themes/sswebpack_engine_only/
# npm install
# npm run build --theme_dir=themes/sun
# cd -
# sudo rm public/cache -rf
# sudo rm themes/sun/dist/*.gz -rf
#
# gzip themes/sun/dist/app.css themes/sun/dist/app.css.gz
# gzip themes/sun/dist/app.js themes/sun/dist/app.js.gz
# gzip themes/sun/dist/vendors~app.js themes/sun/dist/vendors~app.js.gz
#
# find . -name "*.orig" -exec rm "{}" \;
#
#
# cd themes/sun
# git add . -A
# git commit . -m "MINOR: build"
# git push
# cd -
# git add . -A
# git commit . -m "MINOR: build"
# git push
# cd -
source ~/.nvm/nvm.sh
nvm use node
dir="$PWD"

echo '------------------------------'
echo ' run build'
echo '------------------------------'
cd themes/sswebpack_engine_only/
npm install
npm run build --theme_dir=themes/theme-info-only
echo '------------------------------'

