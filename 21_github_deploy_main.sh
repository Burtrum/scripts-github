## 21_github_deploy_main.sh
#
echo "START: 21_github_deploy_main.sh \$1=tag"

if [ -z "$1" ]; then
  echo "BAD ARG: missing tag argument"
  exit 1
fi

RELEASE_TAG="$1"
REPO_NAME=`basename $PWD`

git checkout main
git tag -a ${RELEASE_TAG} -m "${REPO_NAME} - push 'main' with tag: ${RELEASE_TAG}"
git push --follow-tags

echo "END: 21_github_deploy_main.sh"
