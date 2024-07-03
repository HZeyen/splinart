git add .
git commit -m "initial commit"
git remote add origin git@github.com:HZeyen/splinart.git
git branch -M main
git push -u origin main

git checkout main
git branch add-readme
git pull
git checkout -b add-gitprecommit

pixi add -f precommit pre-commit
pixi project environment add dev -f precommit

pre-commit install
git add .pre-commit-config.yaml
git commit -m "add pre-commit config"
pre-commit run --all-files
