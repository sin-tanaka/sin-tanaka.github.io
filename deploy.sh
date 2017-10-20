#!/bin/bash
echo "---Now updating..."
echo "---Build by hugo."
hugo >/dev/null

echo "---git add & commit."
git add . >/dev/null
git commit -m "updated on `(date +"%Y/%m/%d")`" >/dev/null

echo "---git push /public from /public to master."
git subtree push --prefix public/ origin master >/dev/null

echo "Open your GitHub-pages? [Y/n]"
read ANSWER

case $ANSWER in
    "" | "Y" | "y" | "yes" | "Yes" | "YES" ) open https://sin-tanaka.github.io/;;
    * ) echo "---Finish.";;
esac

echo "---Finish."
