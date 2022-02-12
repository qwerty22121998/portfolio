#!/usr/bin/env sh

# abort on errors
set -e
# remove dist
rm -rf ./dist

# build
yarn build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USER>.github.io
git push -f https://github.com/qwerty22121998/qwerty22121998.github.io.git main

# if you are deploying to https://<USER>.github.io/<REPO>
# git push -f git@github.com:<USER>/<REPO>.git main:gh-pages

cd -