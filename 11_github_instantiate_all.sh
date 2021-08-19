## 11_github_instantiate_all.sh
#
echo "START: 11_github_instantiate_all.sh"
GITHUB_NAME="burtrum"
REPO_NAME=`basename $PWD`
# minimum working directory files
touch .gitignore
touch README.md

# 1. Create git repository in this directory, rename 'main' from default branch 'master'
# 2. Instantiate 'main' branch
git init
git add .
git commit -m 'initial commit: main.'
git branch -M main
git remote add origin git@github.com:${GITHUB_NAME}/${REPO_NAME}.git
git push --follow-tags --set-upstream origin main

# 3. Instantiate 'develop' branch from 'main'
git checkout -b develop main
git commit -m 'initial commit: develop from main.'
git push --follow-tags --set-upstream origin develop

# 4. Instantiate 'release' branch from 'develop'
git checkout -b release develop
git commit -m 'initial commit: release from develop.'
git push --follow-tags --set-upstream origin release

# 5. done
git checkout main
git branch
echo "========"
git log --all --decorate --oneline --graph

echo "END: 11_github_instantiate_all.sh"
