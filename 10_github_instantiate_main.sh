## 10_github_instantiate_main.sh
#
echo "START: 10_github_instantiate_main.sh"
GITHUB_NAME="burtrum"
REPO_NAME=`basename $PWD`

echo "... there must be an empty github repository: ${GITHUB_NAME}/${REPO_NAME}"
# minimum working directory files
touch .gitignore
touch README.md

# 1. Create git repository in this directory, rename 'main' from default git branch 'master'
# 2. Instantiate 'main' branch
git init
git add .
git commit -m 'initial commit: main.'
git branch -M main
git remote add origin git@github.com:${GITHUB_NAME}/${REPO_NAME}.git
git push --follow-tags --set-upstream origin main

# 3. done
echo "========"
git branch

echo "========"
git remote -vv

echo "========"
git log --all --decorate --oneline --graph

echo ""
echo "END: 10_github_instantiate_main.sh"
