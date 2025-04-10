## ❓ More Knowledge Check – Advanced Q&A


### 🧠 Combined Q&A – Master Level

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

