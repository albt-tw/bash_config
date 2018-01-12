#!/bin/bash

alias g='git'

alias aa='git add --all'
alias br='git branch'
alias co='git checkout'
alias gd='git diff'

alias cm='git commit -m'
alias cma='git commit -am'
alias am='git commit --amend'

alias lg='git log --oneline --graph --decorate'

alias re='git reset'
alias reh='git reset --hard'
alias res='git reset --soft'

alias st='git status'
alias sb='git status -s -b'

alias pf='git push -f'

alias pick='git cherry-pick'
alias uncommit='git reset --soft HEAD~1'
alias smuir='git submodule update --init --recursive'
alias rebase='git fetch origin -p; git rebase origin/master `git rev-parse --abbrev-ref HEAD`;'
alias pull='git fetch origin -p; git update-ref refs/heads/master remotes/origin/master; echo master is now at `git log master --oneline -1`'

function gpo() {
    if [ $# -gt 0 ]; then
        branch=$1
    else
        branch=`git rev-parse --abbrev-ref HEAD`
    fi
    cmd="git push -f origin $branch"
    echo "> $cmd"
    $cmd
}
