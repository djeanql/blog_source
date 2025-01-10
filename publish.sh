#!/bin/bash

commit_message=${1:-"Published"}

cd deploy

git add .
git commit -m "$commit_message"
git push