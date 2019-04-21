#!/usr/bin/env bash

if [ $# -lt 1 ]; then
  echo "Usage: ./gitPushAll.sh [Commit Message]"
  exit 0
fi

commitMessage=""

for i in $*; do
  commitMessage+=$i
  commitMessage+=" "
done

#echo "$commitMessage"
git status
git add *
git commit -m "$commitMessage"
git push
