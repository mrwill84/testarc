#!/bin/bash

curbranch=`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'`
if [ "$curbranch"x = "(master)"x ]; then
    echo "currentbranch: "$curbranch
    git checkout -b $1
    echo "create new branch: "$1
    if [ ! -f ".arc" ]; then
        touch ".arc"
    else
        rm ".arc"  
    fi
    touch ".arc"
    if [ ! -f ".gitignore" ]; then
        echo ".arc" >> .gitignore
    fi
    echo $1 >> .arc
else
    echo "currentbranch: "$curbranch
    echo "can't create branch from other branch'"
fi