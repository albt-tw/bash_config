#!/bin/bash

# auto rebase current branch to lastest master

if [ -n "$1" ]; then
    remote="$1"
else
    remote='origin'
fi

if [ -n "`git branch 2>&1 | grep 'fatal: Not a git repository'`" ]; then
    git branch
elif [ -z "`git status | grep 'working tree clean'`" ]; then
    echo 'error: working tree is not clean!'
else
    branch=`git rev-parse --abbrev-ref HEAD`

    if [ -z "$branch" ]; then
        git branch
    elif [ "$branch" == 'master' ]; then
        echo "Fast-forward 'master' to $remote/master"
        set -x
        git fetch $remote -p
        git reset --hard $remote/master
    else
        echo "Rebase '$branch' to $remote/master"
        set -x
        git fetch $remote -p
        git rebase $remote/master $branch
    fi
fi
