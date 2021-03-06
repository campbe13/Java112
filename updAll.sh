#!/bin/bash
# update git repo
# pmcampbell
#
if [[ $# -eq 0 ]] ; then
   echo we need a string for commit message
   exit
fi
git add .
git commit -m "$*"
if [[ $? -eq 0 ]] ; then
   git push origin master
else 
   echo "git commit error, not pushing"
fi
