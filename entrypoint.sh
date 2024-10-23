#!/bin/bash

set -e  

echo "======================"

# Configure Git
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A
git commit -m "Update Feed" || echo "No changes to commit"  
git push --set-upstream origin main

echo "======================"
