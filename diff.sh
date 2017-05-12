#!/bin/bash
currentbranch=`cat .arc`
git add -A
git commit -m"ddd"
git push -u origin D$currentbranch