DEPLOY_DIR=deploy

set -x
set -e

git config --global push.default simple
git config --global user.email "$(git --no-pager show -s --format='%ae' HEAD)"
git config --global user.name "$(git --no-pager show -s --format='%an' HEAD)"

git clone -q --branch=gh-pages $CIRCLE_REPOSITORY_URL $DEPLOY_DIR

cd $DEPLOY_DIR
rm -r ./*
echo "cpssd.net" > CNAME
mv ../public/* .

git add -f .
git commit -m "Build $CIRCLE_BUILD_NUM [ci skip]" || true
git push -f
