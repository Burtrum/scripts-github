##20_github_deploy_main_v1.0.sh
#
echo "START: 20_github_deploy_main_v1.0.sh"

RELEASE_TAG="v1.0"
REPO_NAME=`basename $PWD`

git checkout main
git tag -a ${RELEASE_TAG} -m "${REPO_NAME} - push 'main' with tag: ${RELEASE_TAG}"
git push --follow-tags

echo ""
echo "========"
git log --all --decorate --oneline --graph
echo ""
echo "END: 20_github_deploy_main_v1.0.sh"
