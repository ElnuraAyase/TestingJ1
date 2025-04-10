

# 🧠 Combined Q&A – Master Level

| ❓ Question | ✅ Answer |
|------------|----------|
| What does `git merge` do? | Combines changes from one branch into another. |
| How to undo changes without deleting commits? | `git revert` |
| How to remove a submodule? | `git submodule deinit`, `git rm`, delete `.git/modules`. |
| How to apply and remove the top stash? | `git stash pop` |
| What is the staging area? | Where changes are staged before commit. |
| What does `git tag` do? | Marks a specific commit. |
| What does `HEAD` point to? | Current branch or latest commit. |
| Difference: `rebase` vs `merge`? | Rebase rewrites history; merge combines branches. |
| How to remove a branch locally and remotely? | `git branch -d`, `git push origin --delete`. |
| What does `git log` do? | Shows commit history. |
| What is the purpose of `git stash`? | Temporarily hides local changes. |
| What is `git revert <hash>` used for? | Creates a commit to undo a previous one. |
| Best way to undo a commit but keep changes? | `git reset --soft HEAD~1` |
| What command starts a Git repo? | `git init` |
| What happens if you `git push` a new branch? | It is created remotely. |
| How to compare local vs remote commits? | `git log origin/main..HEAD` |
| What is a submodule? | A repo inside another repo. |
| What does `git stash list` do? | Shows stashed changes. |
| Clean way to rewrite commit history? | `git rebase -i` |
| Command to delete a remote branch? | `git push origin --delete <branch>` |
| What does `git cherry-pick` do? | Applies selected commits to another branch. |
| How do you track a remote branch locally? | `git checkout --track origin/branch-name` |
| How to undo the last commit completely? | `git reset --hard HEAD~1` |
| How to rename a branch? | `git branch -m old-name new-name` |
| How to compare branches? | `git diff branch1..branch2` |
| How to stash and switch branches? | `git stash` then `git checkout branch` |
| How to see untracked files? | `git status` |
| How to show all tags? | `git tag` |
| How to apply a stash without deleting it? | `git stash apply` |
| What does `git diff` show? | Differences between commits, branches, or working dir |

---

### ✅ True or False (Advanced)

| Statement | ✅ True/False |
|-----------|---------------|
| `git fetch` updates your working branch | ❌ False |
| `git rebase` rewrites commit history | ✅ True |
| Git works offline | ✅ True |
| `git stash pop` removes stash entry after restoring | ✅ True |
| `git revert` deletes history | ❌ False |
| `.gitignore` ignores already tracked files | ❌ False |
| `git push` creates commits | ❌ False |
| Merge conflicts require manual fixes | ✅ True |
| A fork is a repo you cloned from someone else | ✅ True |
| `git tag` is for marking commits | ✅ True |
| `git pull` = fetch + merge | ✅ True |
| IntelliJ can handle merge conflicts via UI | ✅ True |
| `git reset --hard` is easily reversible | ❌ False |
| Submodules must be cloned separately | ✅ True |
| GitHub and Git are the same | ❌ False |
| `git cherry-pick` applies specific commit(s) | ✅ True |
| You can remove remotes with `git remote remove` | ✅ True |
| Commits are identified by hashes | ✅ True |
| `HEAD` refers to your current branch | ✅ True |
| Revert is safer than reset in shared repos | ✅ True |
| `git stash` can hold multiple states | ✅ True |
| You can tag commits after pushing them | ✅ True |
| A fast-forward merge doesn’t create a new commit | ✅ True |
| Tags are transferred with `git push --tags` | ✅ True |
| `git init` can be undone with `.git` removal | ✅ True |
| Detached HEAD means you're not on a branch | ✅ True |
| `git log --oneline` shows compact history | ✅ True |
| Merge is preferred over rebase for shared branches | ✅ True |
| You can squash commits with rebase | ✅ True |

---

### 🧪 Git Mastery Test (30 Multiple Choice Questions)

1. What command is used to combine changes from another branch?
   - A. git combine
   - B. git pull
   - C. git merge
   - D. git rebase
   ✅ **Answer:** C

2. What does `git init` do?
   - A. Creates a new repo
   - B. Deletes a branch
   - C. Applies stashed changes
   - D. Commits changes
   ✅ **Answer:** A

3. Which command downloads changes but doesn’t apply them?
   - A. git pull
   - B. git fetch
   - C. git merge
   - D. git clone
   ✅ **Answer:** B

4. Which is safer for shared repos: reset or revert?
   - A. reset
   - B. revert
   ✅ **Answer:** B

5. How to remove a branch remotely?
   - A. git rm branch
   - B. git branch --delete
   - C. git push origin --delete branch-name
   ✅ **Answer:** C

6. How do you mark a point in Git history?
   - A. git pin
   - B. git tag
   - C. git log
   ✅ **Answer:** B

7. What’s the difference between rebase and merge?
   - A. Rebase deletes history
   - B. Merge creates a cleaner log
   - C. Rebase rewrites commits
   ✅ **Answer:** C

8. What shows changes between two branches?
   - A. git status
   - B. git show
   - C. git diff
   ✅ **Answer:** C

9. What does `git log --oneline` do?
   - A. Shows last commit only
   - B. Shows compact history
   ✅ **Answer:** B

10. How do you see current branch?
   - A. git log
   - B. git branch
   ✅ **Answer:** B

11. How do you stash changes?
   - A. git reset
   - B. git hide
   - C. git stash
   ✅ **Answer:** C

12. How to view stashes?
   - A. git stash view
   - B. git stash list
   ✅ **Answer:** B

13. What does `git cherry-pick` do?
   - A. Removes last commit
   - B. Applies selected commits
   ✅ **Answer:** B

14. What’s used to squash commits?
   - A. git squash
   - B. git rebase -i
   ✅ **Answer:** B

15. Which command rewrites history interactively?
   - A. git history
   - B. git rebase -i
   ✅ **Answer:** B

16. How to apply stash and keep it?
   - A. git stash apply
   ✅ **Answer:** A

17. What creates a local copy of a remote repo?
   - A. git clone
   ✅ **Answer:** A

18. Which command is used to stage changes?
   - A. git add
   ✅ **Answer:** A

19. What does `git push` do?
   - A. Saves commits locally
   - B. Sends commits to remote
   ✅ **Answer:** B

20. How do you resolve a merge conflict?
   - A. Delete file
   - B. Edit manually and commit
   ✅ **Answer:** B

21. What’s a detached HEAD?
   - A. A branch with no commits
   - B. Not on any branch
   ✅ **Answer:** B

22. How to rename a branch?
   - A. git branch -m
   ✅ **Answer:** A

23. What is a fast-forward merge?
   - A. A merge with new commit
   - B. A merge without new commit
   ✅ **Answer:** B

24. Which command lists all branches?
   - A. git list
   - B. git branch -a
   ✅ **Answer:** B

25. How do you delete a stash?
   - A. git stash clear
   ✅ **Answer:** A

26. What happens when you delete `.git` folder?
   - A. Repo is reset
   ✅ **Answer:** A

27. How to switch branches?
   - A. git checkout branch-name
   ✅ **Answer:** A

28. What’s `origin` in Git?
   - A. Main branch
   - B. Name for remote repo
   ✅ **Answer:** B

29. How to make a branch track remote one?
   - A. git track remote
   - B. git checkout --track origin/name
   ✅ **Answer:** B

30. What is a commit hash?
   - A. Git version
   - B. Unique commit ID
   ✅ **Answer:** B

---

