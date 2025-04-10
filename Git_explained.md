# 📘 Ultimate Git Guide for Beginners & Daily Use

> Learn Git from scratch and beyond. Designed for everyday use, IntelliJ IDEA workflows, integration with Azure, and job interview readiness. Includes practical examples, common scenarios, error handling, and test questions with answers.

---

## 🚀 What is Git?

**Git** is a distributed version control system (DVCS) that lets developers track changes in their codebase, collaborate with others, and manage code versions efficiently. Created by Linus Torvalds in 2005 for Linux development, Git is now a cornerstone tool in modern software development.

---

## 🧠 Core Concepts Explained

- **Repository (repo):** A folder containing your code and `.git` directory.
- **Local vs Remote:** Git works on your machine (local) and also syncs with repositories hosted online (remote).
- **Commit:** A saved snapshot of your code at a specific time.
- **Branch:** A parallel version of your project used to work independently.
- **Merge:** Combining code from different branches.
- **Rebase:** Integrating changes from one branch into another in a linear fashion.
- **Fork:** Copy of a repository under a different account (usually used to contribute).
- **Pull Request (PR):** A request to merge your changes into another branch or repo.

---

## 🛠️ Essential Git Commands

| Command | Description |
|--------|-------------|
| `git init` | Initialize a new Git repo |
| `git clone <url>` | Clone an existing repo |
| `git status` | View changes made |
| `git add <file>` | Stage file(s) for commit |
| `git commit -m "message"` | Save snapshot with a message |
| `git push` | Send commits to the remote repo |
| `git pull` | Fetch + merge remote changes |
| `git fetch` | Fetch changes without merging |
| `git branch` | List local branches |
| `git branch <name>` | Create a new branch |
| `git checkout <name>` | Switch branches |
| `git merge <branch>` | Merge specified branch |
| `git rebase <branch>` | Reapply commits on top of another branch |
| `git remote -v` | Show remote URL(s) |
| `git log` | Commit history |
| `git stash` | Temporarily save changes |
| `git reset` | Undo changes |
| `git rev-parse --abbrev-ref HEAD` | Show current branch |
| `git submodule status` | Show submodule (subrepo) info |

---

## ❌ Remove Repos, Files, or Commits

### Remove Tracked File (from Git only, not disk)
```bash
git rm --cached filename
```

### Remove Specific Class or File
```bash
git rm path/to/FileName.java
```

### Remove Specific Folder (from Git and Disk)
```bash
git rm -r foldername
```

### Undo Last Commit (keep changes)
```bash
git reset --soft HEAD~1
```

### Undo Last Commit (discard changes)
```bash
git reset --hard HEAD~1
```

### Delete Local Branch
```bash
git branch -d branch-name
```

### Remove Remote Repo Reference
```bash
git remote remove origin
```

### Remove Submodule
```bash
git submodule deinit -f path/to/submodule
git rm -f path/to/submodule
rm -rf .git/modules/path/to/submodule
```

---

## 📦 Push and Commit a Whole Folder or File

### Stage and Commit a Folder or File
```bash
git add foldername/
git commit -m "Add entire folder for UI components"
```

### Push to Remote
```bash
git push origin branch-name
```

---

## 🖥️ Using Git with IntelliJ IDEA

### Initial Setup
1. Enable Git: `File > Settings > Version Control > Git`
2. Set path to Git binary (auto-detected or set manually)
3. Link GitHub: `Settings > Version Control > GitHub`

### Working with Git in IntelliJ
- **Commit:** `Ctrl+K` (Windows/Linux), `Cmd+K` (Mac)
- **Push:** `Ctrl+Shift+K` / `Cmd+Shift+K`
- **Update (Pull):** `Ctrl+T` / `Cmd+T`
- **View history:** Right-click file > Git > Show History
- **Create branch:** VCS > Git > Branches > New Branch
- **Merge:** VCS > Git > Merge Changes

### Adding a Git Remote & Pushing Project
1. Go to **Terminal**:
```bash
git remote add origin https://your-url.git
git push -u origin main
```
2. OR use VCS > Share Project on GitHub

---

## 🧪 Practical Git Workflow (With IntelliJ)

1. **Create a Feature Branch**
```bash
git checkout -b feature/new-ui
```
2. **Make changes in IntelliJ**
3. **Commit changes**
```bash
git add .
git commit -m "Add new UI component"
```
4. **Push branch**
```bash
git push origin feature/new-ui
```
5. **Create Pull Request** on GitHub/Azure

---

## 🧩 Handling Git Errors

### Push Errors
- **Non-fast-forward:**
```bash
git pull --rebase
git push
```
- **Authentication Issues:**
  - Setup SSH or Personal Access Token (PAT)
  - On IntelliJ, check **Settings > GitHub > Tokens**

### Merge Conflicts
- IntelliJ: Will show UI for conflict resolution
- Manual fix:
  ```bash
  git status
  git add <resolved-file>
  git commit
  ```

---

## ☁️ Git with Azure DevOps

### Clone
```bash
git clone https://dev.azure.com/org/project/_git/repo
```

### Push Code
```bash
git remote add origin https://dev.azure.com/org/project/_git/repo
git push -u origin main
```

### Create Pull Request
- Azure DevOps > Repos > Pull Requests > New Pull Request

---

## 🍴 Forking and Pull Requests (Step-by-step)

### Forking a Repo
1. Go to the repo on GitHub/Azure
2. Click **Fork**
3. Clone it locally:
```bash
git clone https://github.com/yourname/project.git
```

### Making a PR
1. Create branch:
```bash
git checkout -b fix/login-bug
```
2. Commit & push:
```bash
git commit -m "Fix login bug"
git push origin fix/login-bug
```
3. Open PR from GitHub UI

---

## ✅ Common Git Interview Questions (with Answers)

**Q1:** What is Git and why use it?
- Git is a version control system that helps manage code versions, collaborate, and track changes.

**Q2:** What is the difference between `git pull` and `git fetch`?
- `git pull` = fetch + merge. `git fetch` just downloads changes.

**Q3:** How do you resolve merge conflicts?
- Open conflict files, edit manually or use IntelliJ UI, then stage and commit.

**Q4:** What does `git rebase` do?
- Re-applies commits from one branch onto another base branch, creating a linear history.

**Q5:** How do you contribute to someone else's project?
- Fork repo > clone > branch > commit > push > create pull request.

**Q6:** What is `.gitignore`?
- File specifying which files/folders Git should ignore (e.g., logs, build folders).

**Q7:** How do you undo the last commit?
```bash
git reset --soft HEAD~1
```

**Q8:** How do you stash changes?
```bash
git stash
```

**Q9:** How do you view your commit history?
```bash
git log
```

**Q10:** How do you push to a specific branch?
```bash
git push origin your-branch
```

---

## 🧠 Extra Tips for Advanced Use
- Use `git cherry-pick <commit>` to apply specific commits
- Use `git bisect` to find which commit introduced a bug
- Alias your commands in `.gitconfig`
- Use signed commits with GPG keys

---

## 📎 Helpful Resources
- [Git Cheat Sheet PDF](https://education.github.com/git-cheat-sheet-education.pdf)
- [Pro Git Book](https://git-scm.com/book/en/v2)
- [IntelliJ Git Docs](https://www.jetbrains.com/help/idea/version-control-integration.html)
- [Azure DevOps Git Docs](https://learn.microsoft.com/en-us/azure/devops/repos/git/)

---



