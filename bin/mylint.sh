

git checkout develop

git add . -A
git status
git commit . -m "WIP"
git pull origin develop
git push origin develop

sake-git-commit-and-push-vendor-packages vendor/sunnysideup -m "LINT" 

sake-lint-all vendor/sunnysideup

sake-git-commit-and-push-vendor-packages vendor/sunnysideup -m "LINT" 


git add . -A
git status
git commit . -m "WIP"
git pull origin develop
git push origin develop

sake-lint-all app
sake-git-commit-and-push  -m "LINT" 


