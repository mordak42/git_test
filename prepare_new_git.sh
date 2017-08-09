#!/bin/sh

# $1 should be the new directory of the git repository.
# $2 is the remote address of the repository.

mkdir $1
cd $1
echo "# ${1}" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin $2
git push -u origin master
exit 0
