
---

## 🧠 Combined Q&A – Master Level

Here’s an expanded list of common Git commands with additional commands related to your request, along with explanations for removing files from `.gitignore` and tracking specific files.

### ❓ Questions and Answers

| **Question** | **Answer** |
|--------------|------------|
| **What does git merge do?** | Combines changes from one branch into another. |
| **How to undo changes without deleting commits?** | `git revert` |
| **How to remove a submodule?** | `git submodule deinit`, `git rm`, delete `.git/modules`. |
| **How to apply and remove the top stash?** | `git stash pop` |
| **What is the staging area?** | Where changes are staged before commit. |
| **What does git tag do?** | Marks a specific commit. |
| **What does HEAD point to?** | Current branch or latest commit. |
| **Difference: rebase vs merge?** | Rebase rewrites history; merge combines branches. |
| **How to remove a branch locally and remotely?** | `git branch -d`, `git push origin --delete`. |
| **What does git log do?** | Shows commit history. |
| **What is the purpose of git stash?** | Temporarily hides local changes. |
| **What is git revert <hash> used for?** | Creates a commit to undo a previous one. |
| **Best way to undo a commit but keep changes?** | `git reset --soft HEAD~1` |
| **What command starts a Git repo?** | `git init` |
| **What happens if you git push a new branch?** | It is created remotely. |
| **How to compare local vs remote commits?** | `git log origin/main..HEAD` |
| **What is a submodule?** | A repo inside another repo. |
| **What does git stash list do?** | Shows stashed changes. |
| **Clean way to rewrite commit history?** | `git rebase -i` |
| **Command to delete a remote branch?** | `git push origin --delete <branch>` |
| **What does git cherry-pick do?** | Applies selected commits to another branch. |
| **How do you track a remote branch locally?** | `git checkout --track origin/branch-name` |
| **How to undo the last commit completely?** | `git reset --hard HEAD~1` |
| **How to rename a branch?** | `git branch -m old-name new-name` |
| **How to compare branches?** | `git diff branch1..branch2` |
| **How to stash and switch branches?** | `git stash` then `git checkout branch` |
| **How to see untracked files?** | `git status` |
| **How to show all tags?** | `git tag` |
| **How to apply a stash without deleting it?** | `git stash apply` |
| **What does git diff show?** | Differences between commits, branches, or working directory. |

---



### ✅ True or False (Advanced)

| Statement | ✅ True/False | Explanation |
|-----------|---------------|-------------|
| `git fetch` updates your working branch | ❌ False | `git fetch` downloads changes from the remote repository but does not update your working directory or local branches. You need to use `git merge` or `git rebase` to integrate the fetched changes into your working branch. |
| `git rebase` rewrites commit history | ✅ True | `git rebase` changes the base of a branch by replaying its commits on top of another branch. It effectively rewrites the commit history, making it linear. |
| Git works offline | ✅ True | Once you've cloned a repository, Git operates locally on your machine. You can commit, branch, and reset without needing an internet connection. However, you'll need internet access to fetch from or push to a remote repository. |
| `git stash pop` removes stash entry after restoring | ✅ True | `git stash pop` restores changes from the most recent stash and then deletes it from the stash list. |
| `git revert` deletes history | ❌ False | `git revert` creates a new commit that undoes the changes made by a previous commit, but it doesn’t delete history. Instead, it adds a new commit that "reverts" the previous changes. |
| `.gitignore` ignores already tracked files | ❌ False | `.gitignore` only ignores untracked files. If a file is already being tracked by Git, you need to untrack it first (using `git rm --cached <file>`) for `.gitignore` to take effect. |
| `git push` creates commits | ❌ False | `git push` only uploads your local commits to the remote repository. It does not create any new commits. Commits are created by `git commit`. |
| Merge conflicts require manual fixes | ✅ True | When Git cannot automatically merge changes due to conflicting modifications, it flags a merge conflict. You need to manually resolve these conflicts and then commit the result. |
| A fork is a repo you cloned from someone else | ✅ True | A fork is a copy of someone else's repository that you can modify. It is typically used in open-source contributions, allowing you to push changes without affecting the original repository. |
| `git tag` is for marking commits | ✅ True | `git tag` is used to mark specific commits, typically to signify releases or milestones in the project. |
| `git pull` = fetch + merge | ✅ True | `git pull` is a combination of two commands: `git fetch`, which retrieves changes from the remote, and `git merge`, which integrates those changes into your current branch. |
| IntelliJ can handle merge conflicts via UI | ✅ True | IntelliJ IDEA has built-in tools for resolving merge conflicts using a graphical interface, making it easier to review and fix conflicts. |
| `git reset --hard` is easily reversible | ❌ False | `git reset --hard` is not easily reversible. It discards both the commit and the changes in your working directory. Once executed, it cannot be undone without specific recovery tools. |
| Submodules must be cloned separately | ✅ True | Submodules are separate Git repositories within your project. You need to clone them explicitly using `git submodule init` and `git submodule update`. |
| GitHub and Git are the same | ❌ False | GitHub is a platform for hosting Git repositories and collaborating on them. Git is a version control system that works locally and doesn’t require a hosting service. |
| `git cherry-pick` applies specific commit(s) | ✅ True | `git cherry-pick` allows you to apply changes from a specific commit onto your current branch, making it a great way to selectively apply patches. |
| You can remove remotes with `git remote remove` | ✅ True | `git remote remove` is used to remove a remote reference from your local Git configuration. This does not delete the remote repository itself, just your local reference to it. |
| Commits are identified by hashes | ✅ True | Every commit in Git is identified by a unique SHA-1 hash. This hash is used internally to track changes and can be used to reference specific commits. |
| `HEAD` refers to your current branch | ✅ True | `HEAD` refers to the currently checked-out branch or commit. It points to the most recent commit on the current branch. |
| Revert is safer than reset in shared repos | ✅ True | `git revert` is safer in shared repositories because it doesn’t alter the commit history. It only creates a new commit that undoes changes, preserving the history of the repository. |
| `git stash` can hold multiple states | ✅ True | Git can stash multiple changes, and each stash is indexed in the stash list. You can apply, pop, or drop individual stashes as needed. |
| You can tag commits after pushing them | ✅ True | Tags can be added to commits even after they have been pushed. You just need to push the tags using `git push --tags` to make them available remotely. |
| A fast-forward merge doesn’t create a new commit | ✅ True | In a fast-forward merge, no new commit is created. Git simply moves the branch pointer forward to the latest commit of the merged branch, as no divergent history exists. |
| Tags are transferred with `git push --tags` | ✅ True | Tags are not pushed by default with `git push`; however, you can transfer them explicitly using `git push --tags`. |
| `git init` can be undone with `.git` removal | ✅ True | Deleting the `.git` folder effectively uninitializes a repository, removing all Git tracking and history from that directory. |
| Detached HEAD means you're not on a branch | ✅ True | When in a detached HEAD state, you are not on any branch. HEAD points to a specific commit instead of a branch reference. |
| `git log --oneline` shows compact history | ✅ True | `git log --oneline` displays a simplified version of the commit history, showing each commit on a single line, often with just the commit hash and message. |
| Merge is preferred over rebase for shared branches | ✅ True | For shared branches, merge is preferred because it maintains the commit history, while rebase rewrites history, which can be problematic in shared environments. |
| You can squash commits with rebase | ✅ True | The `git rebase -i` command allows you to squash multiple commits into one, which helps in cleaning up commit history before pushing to a shared branch. |
| `git fetch` updates your local branch with remote changes | ❌ False | `git fetch` only updates your local copy of the remote repository. It does not affect your current branch until you merge or rebase the changes. |
| `git pull` automatically creates a new commit | ❌ False | `git pull` does not always create a new commit. If a fast-forward merge happens, it doesn’t create a new commit. |
| `git reset --soft` undoes all changes | ❌ False | `git reset --soft` only moves the HEAD and does not modify the working directory or the staging area It keeps your changes in the staging area for you to recommit. |
| You cannot merge without pushing first | ❌ False | Merging is a local operation and does not require pushing changes to the remote repository. Pushing is a separate operation that uploads commits after they’ve been merged. |
| You must always fetch before merging | ❌ False | While it's good practice to fetch before merging, it’s not mandatory. You can merge directly from the remote using `git pull`, which combines both fetch and merge. |
| `git merge --abort` can undo any merge | ❌ False | `git merge --abort` only works if a merge conflict occurs during the merge process. It will not work after the merge is completed or if no merge conflict arises. |
| A branch is deleted when you remove it locally | ❌ False | Removing a local branch does not affect the remote branch unless explicitly deleted using `git push origin --delete <branch>`. |
| `git reset --hard HEAD~1` affects staged changes | ❌ False | `git reset --hard` not only resets the commit history but also resets the working directory and the staging area. It will discard changes permanently. |
| You can only have one stash at a time | ❌ False | You can have multiple stashes. Git maintains a stash stack, and you can list, apply, or pop any specific stash. |
| You can only rebase on local branches | ❌ False | While rebasing is often done locally, you can rebase remote branches as well, as long as you're careful not to disrupt others' work in shared branches. |

---


---

## 🧪 Git Mastery Test – Revised Multiple Choice (40 Questions)

| # | Question | Options | ✅ Correct Answer(s) |
|----|----------|---------|----------------------|
| 1 | What command is used to combine changes from another branch? | A. `git combine`<br>B. `git merge`<br>C. `git pull`<br>D. `git attach` | ✅ B |
| 2 | What does `git init` do? | A. Initializes a new Git repository<br>B. Commits changes<br>C. Deletes the remote<br>D. Switches branches | ✅ A |
| 3 | What does `git fetch` do? | A. Applies changes locally<br>B. Downloads updates from remote<br>C. Creates a branch<br>D. Deletes stashes | ✅ B |
| 4 | Which is safer for undoing commits on a shared repo? | A. `git reset --hard`<br>B. `git cherry-pick`<br>C. `git revert`<br>D. `git remove` | ✅ C |
| 5 | How do you delete a remote branch? | A. `git branch -r delete`<br>B. `git rm remote-branch`<br>C. `git push origin --delete branch-name`<br>D. `git delete remote branch` | ✅ C |
| 6 | How do you mark a specific commit in history? | A. `git mark`<br>B. `git tag`<br>C. `git label`<br>D. `git commit --name` | ✅ B |
| 7 | What’s the main difference between merge and rebase? | A. Rebase creates new commits<br>B. Merge rewrites history<br>C. Rebase is destructive<br>D. Merge creates linear history | ✅ A |
| 8 | How to view differences between two branches? | A. `git compare`<br>B. `git diff branch1..branch2`<br>C. `git status`<br>D. `git show` | ✅ B |
| 9 | What does `git log --oneline` show? | A. One line of code<br>B. Condensed commit history<br>C. Changes since last pull<br>D. Last commit only | ✅ B |
| 10 | How can you list all local branches? | A. `git list`<br>B. `git show-branches`<br>C. `git branch`<br>D. `git status` | ✅ C |
| 11 | How do you temporarily save your work without committing? | A. `git temp`<br>B. `git reset`<br>C. `git stash`<br>D. `git pause` | ✅ C |
| 12 | Which command shows your stashes? | A. `git stash list`<br>B. `git log stash`<br>C. `git stash view`<br>D. `git show-stash` | ✅ A |
| 13 | What does `git cherry-pick` do? | A. Applies a single commit to another branch<br>B. Reverts a commit<br>C. Removes commits<br>D. Deletes remote branches | ✅ A |
| 14 | Which command is used to squash commits? | A. `git squash`<br>B. `git commit --squash`<br>C. `git rebase -i`<br>D. `git merge --squash` | ✅ C, D |
| 15 | What command helps you rewrite commit history interactively? | A. `git history`<br>B. `git rebase -i`<br>C. `git reset`<br>D. `git reflog` | ✅ B |
| 16 | How do you apply a stash without deleting it? | A. `git stash pop`<br>B. `git stash apply`<br>C. `git stash --keep`<br>D. `git stash load` | ✅ B |
| 17 | What creates a local copy of a remote repo? | A. `git fetch`<br>B. `git clone`<br>C. `git copy`<br>D. `git import` | ✅ B |
| 18 | Which command stages changes? | A. `git stage`<br>B. `git commit`<br>C. `git add`<br>D. `git patch` | ✅ C |
| 19 | What does `git push` do? | A. Moves changes to the staging area<br>B. Sends commits to remote<br>C. Downloads from origin<br>D. Creates a backup | ✅ B |
| 20 | How do you resolve a merge conflict? | A. Use `git conflict resolve`<br>B. Manually edit then commit<br>C. Delete the repo<br>D. Use `git abort` | ✅ B |
| 21 | What is a detached HEAD? | A. Not on any branch<br>B. A missing commit<br>C. A corrupted repo<br>D. HEAD detached from remote | ✅ A |
| 22 | How do you rename a local branch? | A. `git rename branch`<br>B. `git branch -m old new`<br>C. `git branch --rename`<br>D. `git switch --rename` | ✅ B |
| 23 | What is a fast-forward merge? | A. A forced update<br>B. A merge with no new commits<br>C. A skipped merge<br>D. A rollback operation | ✅ B |
| 24 | Which command shows local and remote branches? | A. `git branch -a`<br>B. `git list --all`<br>C. `git show branches`<br>D. `git checkout --all` | ✅ A |
| 25 | How do you clear all stashes? | A. `git stash clear`<br>B. `git stash drop all`<br>C. `git reset stash`<br>D. `git clear-stash` | ✅ A |
| 26 | What happens if you delete the `.git` folder? | A. Commits are reset<br>B. Repo is no longer tracked<br>C. Branches are deleted<br>D. Files are lost | ✅ B |
| 27 | How do you switch branches in Git? | A. `git move`<br>B. `git switch branch-name`<br>C. `git checkout branch-name`<br>D. `git branch switch` | ✅ B, C |
| 28 | What does `origin` refer to in Git? | A. A branch<br>B. The first commit<br>C. The default remote<br>D. The staging area | ✅ C |
| 29 | How do you track a remote branch locally? | A. `git follow remote`<br>B. `git track`<br>C. `git checkout --track origin/branch`<br>D. `git branch --track origin` | ✅ C |
| 30 | What is a commit hash? | A. A temporary ID<br>B. A unique identifier for a commit<br>C. A backup code<br>D. A branch name | ✅ B |
| 31 | How do you stop tracking a file but keep it locally? | A. `git rm`<br>B. `git untrack`<br>C. `git rm --cached filename`<br>D. `git stash` | ✅ C |
| 32 | After cloning a repo with submodules, how to initialize them? | A. `git init`<br>B. `git submodule update --init`<br>C. `git sync`<br>D. `git pull modules` | ✅ B |
| 33 | Which command shows remote URLs? | A. `git show remote`<br>B. `git remote -v`<br>C. `git list remotes`<br>D. `git fetch --info` | ✅ B |
| 34 | How do you edit your last commit message? | A. `git amend`<br>B. `git commit --fix`<br>C. `git commit --amend`<br>D. `git redo` | ✅ C |
| 35 | Which command shows staged changes? | A. `git diff --staged`<br>B. `git diff --cached`<br>C. `git compare`<br>D. `git log -s` | ✅ A, B |
| 36 | What shows unstaged changes? | A. `git status`<br>B. `git diff`<br>C. `git show`<br>D. `git diff HEAD` | ✅ B |
| 37 | What does `git reset --mixed HEAD~1` do? | A. Deletes commit & changes<br>B. Keeps changes unstaged<br>C. Deletes stash<br>D. Switches branch | ✅ B |
| 38 | How do you delete a tracked file from Git and disk? | A. `git untrack`<br>B. `git remove`<br>C. `git rm`<br>D. `git delete file` | ✅ C |
| 39 | How do you force-push a branch? | A. `git push -force`<br>B. `git push --hard`<br>C. `git push -f`<br>D. `git overwrite` | ✅ C |
| 40 | What shows full details of a commit? | A. `git log`<br>B. `git diff`<br>C. `git show <hash>`<br>D. `git describe` | ✅ C |

---

