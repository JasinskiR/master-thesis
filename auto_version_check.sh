#!/bin/bash

# Get the current date and time
TAG_DATE=$(date +%Y-%m-%d-%H-%M-%S)

# Fetch latest changes from remote
git fetch origin master

# Add all changes
git add -A ":!temp_work"

# Check for differences between local branch and master
if git diff --quiet origin/master; then
    echo "No changes detected between local branch and master. Exiting."
    exit 0
fi

# Commit if there are changes staged
if ! git diff --cached --quiet; then
    git commit -m "Auto-commit: changes on $TAG_DATE"
fi

# Push changes to the current branch
git push

# Create a new tag with the current date
git tag "$TAG_DATE"
git push origin "$TAG_DATE"

echo "Changes pushed and tagged as $TAG_DATE"
