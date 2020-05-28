#!/bin/env sh
git checkout gh-pages
rm *.html
rm *.js
rm *.css
mv -f ./docs/.vuepress/dist/* ./
git add .
git commit -m 'build depoly'
git push