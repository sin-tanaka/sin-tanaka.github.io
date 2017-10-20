#!/bin/bash
echo "---Now updating..."
echo "---Build by hugo."
hugo

echo "---git add & commit."
git add . && git commit -m "updated on `(date +"%Y/%m/%d")`"

echo "---git push /public from /public to master."
git subtree push --prefix public/ origin master

echo "Open your GitHub-pages? [Y/n]"
read ANSWER

case $ANSWER in
    "" | "Y" | "y" | "yes" | "Yes" | "YES" ) open https://sin-tanaka.github.io/;;
    * ) echo "---Finish.";;
esac

