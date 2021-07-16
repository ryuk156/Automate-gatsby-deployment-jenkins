#!/bin/bash

File="CNAME"
DST="./public"
fileFound=0
for i in $(ls ./*); do
    if [ -f "$File" ]; then
        cp $File "$DST"
        fileFound=fileFound+1
    fi
done

if [ fileFound == 0 ]; then
    echo "$File not Found"
fi

cd public
git config --global user.email "<user@gmail.com>"
git config --global user.name "<username>"
git init
git add .
git commit -m "push build to git deploy Repository"
git push https://${GIT_CREDS}@github.com/MovingBlocks/ HEAD: <respository >.git <branch >-f
