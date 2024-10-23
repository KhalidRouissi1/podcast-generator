#!/bin/bash

echo "======================'

git config --gloabal user.name "${GITHUB_ACTOR}"
git config --gloabal user.email "${INPUT_EMAIL}"
git config --gloabal --add safe.directory /github/workspace

python3 /usr/bin/feed.py


git add -A && git commit -m "Update Feed"

git push --set-upstream origin main


"

echo "======================'
