#!/bin/env sh
npm run build
git checkout gh-pages
rm *.html
rm *.js
rm *.css
mv ./docs/* ./
git add .
git commit -m 'build depoly'