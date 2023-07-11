Add or to the require “silverstripe/recipe-cms” : "^4 || ^5" inside the composer.json file for each module

Create new tag
Change composer requirement to include 4 and 5
Composer update

Make sure you are in directory for new one 

###########################
# create major tag for SS4.0
###########################

sake-git-commit-and-push -v "major" -m "MAJOR: last version of SilverStripe 4"

THEN CHANGE composer.json with nano

sake-git-commit-and-push . -v major  -m  "MAJOR: include Silverstripe 5.0" 


sake-composer-update 

sake-git-commit-and-push-vendor-packages vendor/sunnysideup/ -v major -m  "MAJOR: include Silverstripe 5.0" 


###########################
# replacers ctrl shift h 
###########################
"silverstripe/recipe-core": "~4.4"
"silverstripe/recipe-cms": "^4.0@stable"
"silverstripe/recipe-cms": "^4.0"
"silverstripe/framework": "~4@stable"
"silverstripe/cms": "~4@stable"
"silverstripe/framework": "~4"
"silverstripe/recipe-cms": "*"
"silverstripe/cms": "4.*"
"silverstripe/framework": "4.*"
"silverstripe/recipe-cms": "~4.0@stable"
"silverstripe/framework": "^4"
"silverstripe/cms": "~4.0"
"silverstripe/framework": "^4.1"
"silverstripe/recipe-core": "~4@stable"
"silverstripe/framework": "^4.0.2"
"silverstripe/recipe-cms": "^4.6@stable"
"silverstripe/recipe-core": "~4.4"
"silverstripe/framework": "^4@stable"



"silverstripe/recipe-cms": "^4.2" 
"silverstripe/framework": "^4.0"
"silverstripe/recipe-cms": "^4.4"
"silverstripe/recipe-cms": "^4.0 || ^ 5.0"
