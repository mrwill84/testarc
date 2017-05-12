#!/bin/bash
currentbranch=`cat .arc`
git checkout master
git pull
git checkout $currentbranch
if [ parse_git_rebase_result = 0 ]
    git push origin $currentbranch:master
    git push origin --delete D$currentbranch
    git checkout master
    git branch -D $currentbranch
then
    echo "Error"
fi 

function parse_git_rebase_result {
      result=`git rebase master 2> /dev/null | tail -n1`
      if [ $result  != "Current branch "$currentbranch" is up to date." ]
        return 0
      then 
        return 1
      fi
}