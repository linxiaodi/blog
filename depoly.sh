#!/bin/env sh
git checkout gh-pages
rm *.html
rm *.js
rm *.css
mv ./docs/.vuepress/dist/* ./
git add .
git commit -m 'build depoly'