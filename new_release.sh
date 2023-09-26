#!/bin/bash -e

VERSION="$1"
VERSION=${VERSION/refs\/tags\/}

if [[ -z $VERSION ]]
then
    echo "Usage $0 tag"
    exit 1;
fi

SEM_VERSION=${VERSION/v/}

echo "Updating version to $VERSION"
echo "Python version = $SEM_VERSION"

sed -e "s/^ksconf_version =.*$/ksconf_version = \"$SEM_VERSION\"/" -i '' setup.py
sed -e "s/rev: .*$/rev: $VERSION/" -i '' README.md

git status

git commit -am "Update to ksconf $SEM_VERSION"
git tag $VERSION
