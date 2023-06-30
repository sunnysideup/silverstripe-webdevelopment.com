#!/bin/bash
source ~/.nvm/nvm.sh
nvm use node
cd themes/sswebpack_engine_only/ && npm run build --theme_dir=themes/theme-info-only && cd - && git add . -A && git commit . -m "WIP" && git push
cd themes/theme-info-only &&  git add . -A && git commit . -m "WIP" && git push && cd -
