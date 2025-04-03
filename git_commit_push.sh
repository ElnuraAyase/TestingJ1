#!/bin/bash

# Step 1: Check current status
echo "Checking Git status..."
git status

# Step 2: Stage all changes (this stages all modified or untracked files)
echo "Staging all changes..."
git add .

# Step 3: Commit changes with a message
echo "Enter commit message (e.g., 'Added new feature'):"
read commit_message
git commit -m "$commit_message"

# Step 4: Push changes to the remote repository
echo "Pushing changes to the remote repository..."
git push

# Step 5: If pushing for the first time or setting upstream, use the following command:
echo "If this is your first time pushing this branch, use the command:"
echo "git push -u origin <your-branch-name>   # Example: git push -u origin ElnuraM"
