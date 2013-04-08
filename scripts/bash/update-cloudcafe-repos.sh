#!/bin/bash

# This script will update my local machine and github to match the rcbops github repos for opencenter. 

repos=(cloudcafe cloudroast opencafe)
branches=(master)

# Print array debugging
echo "Repos array size: ${#repos[*]}, Remotes array size: ${#remotes[*]}, Branches array size: ${#branches[*]}"

echo "Items in Repos array:"
for item in ${repos[*]}
do
    printf "  %s\n" $item
done

echo "Items in Branches array:"
for item in ${branches[*]}
do
    printf "  %s\n" $item
done

# Update repos
cd /home/solo4572/Documents/git
pwd

for repo in ${repos[*]}
do
    cd $repo
    pwd
    for branch in ${branches[*]}
    do
        git checkout $branch
        git pull rcbops $branch
        git push origin $branch
    done
    cd ../
done