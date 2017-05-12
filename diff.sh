#!/bin/bash
currentbranch=`cat .arc`
git add -A
git commit -m"ddd"
git push origin $currentbranch:D$currentbranch
 