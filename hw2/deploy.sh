#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:mk0218/mk0218.github.io.git deploy

# # if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:mk0218/solid-spork.git deploy:gh-pages

cd -