# deploy.sh <your-name> <your-repo>
GITHUB_USERNAME="${1}"
GITHUB_REPO="${2}"
GITHUB_PAGES_BRANCH="${3:-preview}"
SOURCE_BRANCH="${4:-dev}"

cd docs/.vuepress/dist/${GITHUB_REPO} && \
git init && \
git add --all && \
git commit --message 'deploy'

git push --force git@github.com:${GITHUB_USERNAME}/${GITHUB_REPO}.git ${SOURCE_BRANCH}:${GITHUB_PAGES_BRANCH}

