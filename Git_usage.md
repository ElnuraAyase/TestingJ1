# 📘 Ultimate Git Guide for Beginners & Daily Use

> Learn Git from scratch and beyond. Designed for everyday use, IntelliJ IDEA workflows, integration with Azure, and job interview readiness. Includes practical examples, common scenarios, error handling, and test questions with answers.

---

## 🚀 What is Git?

**Git** is a distributed version control system (DVCS) that lets developers track changes in their codebase, collaborate with others, and manage code versions efficiently. Created by Linus Torvalds in 2005 for Linux development, Git is now a cornerstone tool in modern software development.

---

## 🌐 Git vs GitHub vs GitLab vs Azure DevOps

| Tool | Description | Purpose |
|------|-------------|---------|
| **Git** | A local version control tool. | Tracks and manages changes in code locally. |
| **GitHub** | Cloud-based Git hosting. | Enables collaboration, PRs, issue tracking. |
| **GitLab** | Git hosting + CI/CD in one. | Great for DevOps, CI/CD pipelines. |
| **Azure DevOps** | Microsoft toolchain with Git repos. | Integrates Git with pipelines, boards, testing. |

### 🔗 How They Connect
- **Git** works locally.
- Connect it to remotes (GitHub, GitLab, Azure) via:
```bash
git remote add origin <url>
```
- Sync with remote:
```bash
git push
git pull
```

### 📡 API Connections
- **Automate** via REST APIs:
```bash
curl -H "Authorization: token <your-token>" https://api.github.com/user/repos
```
- APIs allow: repo creation, issue handling, webhooks, deployment triggers

---

## 🤝 Why Use Git for Teamwork?

- Avoid overwriting others' code
- Clear collaboration structure using **branches**
- Track **who did what and why**
- Pull Requests (PRs) allow **code review**
- Protect production by isolating features

---

## 🌲 Why Use Master/Main and Branches?

| Term | Description |
|------|-------------|
| **master/main** | The stable, production-ready version of your project. |
| **branch** | A separate workspace to test features or fixes. |

🛠️ Workflow:
1. Create a branch:
```bash
git checkout -b feature/login-fix
```
2. Make changes
3. Commit & push
4. Open a Pull Request to merge into `main`

---

## 🧠 Core Concepts (with Emoji 💡)

- 📁 **Repository:** Project folder with version history
- 💾 **Commit:** A saved version snapshot
- 🌿 **Branch:** A parallel line of development
- 🔀 **Merge:** Combine branches
- 🧬 **Rebase:** Reapply commits on top of a new base
- 🍴 **Fork:** Clone repo under your account
- 📤 **PR (Pull Request):** Ask to merge your changes
- ❌ **.gitignore:** Files Git should ignore

---
Here’s the section formatted to match the rest of your markdown doc so you can easily copy and paste it in:

---

## ❓ More Knowledge Check – Advanced Q&A

### 🔄 Git Concepts Clarified

**🔀 What is `merge`?**  
`git merge` is used to combine changes from one branch into another. It integrates the histories of two branches, creating a new commit on the target branch.
```bash
git checkout main
git merge feature/login
```

**📤 Difference: `merge`, `push`, and `fetch`**

| Action | Description |
|--------|-------------|
| **Merge** | Combines branches locally. |
| **Push** | Sends local commits to the remote repository. |
| **Fetch** | Downloads commits from remote without changing your current branch. |

**⚙️ What is `git init`?**  
Initializes a new Git repository in the current folder. It creates a `.git/` directory for tracking.

**⚔️ What is a Merge Conflict?**  
Occurs when Git cannot auto-merge changes due to conflicting code. Resolve manually, then commit.

**🧹 How to Delete a Subrepo (Submodule)**  
```bash
git submodule deinit path/to/subrepo
git rm path/to/subrepo
rm -rf .git/modules/path/to/subrepo
```

**⏪ What is `revert`?**  
`git revert <commit>` creates a new commit that undoes the changes made by the specified commit, preserving history.

**🔢 What is a Hash?**  
A unique SHA-1 ID representing a Git commit (e.g., `9c1d7e8a3c1f47...`).

**📦 What is Stash?**  
Temporarily stores uncommitted changes so you can work on something else.

**📤 What is Pop Changes?**  
`git stash pop` restores the most recently stashed changes and removes them from the stash list.

---

Let me know if you want this styled for PDF or printable, or want this expanded with visuals or CLI demos.
## 🔐 Public vs Private Repos (Azure)

| Repo Type | Who Can See | Use Case |
|-----------|-------------|----------|
| Public | Anyone | Open-source, demos |
| Private | Invited users only | Company/internal work |

### Change Visibility (Azure DevOps)
- Navigate to Project Settings > Repositories > Choose Repo > Security > Permissions

---

## 🖥️ Logging into Git (IntelliJ IDEA)

1. **Settings > Version Control > Git** – Add Git binary path
2. **Settings > GitHub** – Log in via token or browser
3. IntelliJ auto-auths Azure DevOps via browser

💡 TIP: Use **Personal Access Tokens (PATs)** for secure GitHub/Azure logins

---

## 📋 Checking State in Git

| Command | Purpose |
|---------|---------|
| `git status` | What changed? What’s staged? |
| `git diff` | View code changes |
| `git log` | View commit history |
| `git branch` | List branches |
| `git rev-parse --abbrev-ref HEAD` | Show current branch |
| `git submodule status` | Show subrepo status |
| `git show` | Show commit details |

To see what was pushed vs local:
```bash
git log origin/main..HEAD
```

---

## 🧽 Undoing or Removing Things

| Action | Command |
|--------|---------|
| Untrack file but keep locally | `git rm --cached Elnura.java` |
| Remove file/folder entirely | `git rm -r calculator/` |
| Undo last commit (keep changes) | `git reset --soft HEAD~1` |
| Undo last commit (discard changes) | `git reset --hard HEAD~1` |
| Delete a branch | `git branch -d old-feature` |
| Remove remote | `git remote remove origin` |

---

## 📦 Push and Commit a Whole Folder/File

```bash
git add calculator/
git commit -m "Add calculator module"
git push origin main
```

---

## 🛠️ Common Commands (Cheat Sheet)

| Command | Description | Example |
|---------|-------------|---------|
| `git init` | Init new repo | `git init ElnuraProject` |
| `git clone <url>` | Copy repo | `git clone https://github.com/user/calculator.git` |
| `git add .` | Stage all changes | `git add .` inside `Elnura` project folder |
| `git commit -m "msg"` | Save snapshot | `git commit -m "Fix Elnura class logic"` |
| `git push origin branch` | Upload to remote | `git push origin feature/Elnura-refactor` |
| `git pull` | Sync from remote | `git pull origin main` |
| `git checkout -b branch` | New branch | `git checkout -b feature/new-calculator` |
| `git merge branch` | Merge branch | `git merge feature/new-calculator` |
| `git rebase branch` | Reapply commits | `git rebase main` while on `Elnura` branch |
| `git stash` | Temp hide changes | `git stash save "WIP on Elnura.java"` |
| `git reset` | Undo actions | `git reset --hard HEAD~1` to discard last Elnura commit |

### Additional Commands

1. **How to remove a file or folder from `.gitignore`**  
   To stop ignoring a file or folder that was previously ignored:
   ```bash
   git rm --cached <file_or_folder>
   git add <file_or_folder>
   git commit -m "Remove <file_or_folder> from .gitignore"
   ```
   This removes the file from the index but keeps it in your working directory.

2. **How to track a specific file**  
   If you've added a file to `.gitignore` but now want to track it, you need to first remove it from the `.gitignore` file (or modify the `.gitignore` to exclude it) and then add it to Git:
   ```bash
   git add <file_name>
   git commit -m "Start tracking <file_name>"
   ```

3. **How to add a specific file to Git**  
   To add a specific file to the staging area, use:
   ```bash
   git add <file_name>
   ```

4. **How to add all changes in the current directory**  
   To add all changes (new, modified, or deleted files) in the current directory and its subdirectories:
   ```bash
   git add .
   ```


---

## 🧪 Example Workflow

```bash
git checkout -b feature/form
# work...
git add .
git commit -m "Add form UI"
git push origin feature/form
```

Then create a Pull Request!

---

## 🧨 Git Errors and Fixes

### Push Errors
- **Rejection due to outdated local branch:**
```bash
git pull --rebase
git push
```
- **Auth error:**
  - Use **SSH** or **PAT** (GitHub, Azure)
  - IntelliJ: Settings > GitHub > Use Token

### Merge Conflicts
- Resolve using IntelliJ UI or:
```bash
git status
git add fixed-file
git commit
```

---

## ☁️ Azure DevOps Integration

### Clone Repo
```bash
git clone https://dev.azure.com/org/project/_git/repo
```

### Push First Commit
```bash
git remote add origin https://dev.azure.com/org/project/_git/repo
git push -u origin main
```

### Pull Request
- Azure DevOps > Repos > Pull Requests > New

---

## 🍴 Forking and PRs (Example)

```bash
git fork https://github.com/user/repo.git
cd repo
git checkout -b fix/typo
# edit...
git commit -am "Fix typo"
git push origin fix/typo
```
Then create a PR via GitHub UI.

---

## 🧠 Knowledge Check – Quiz Time!

| ❓ Question | ✅ Answer |
|-------------|----------|
| What is Git? | A version control system |
| What’s the difference between Git and GitHub? | Git is local; GitHub is hosting/collab tool |
| What’s `git pull` do? | Fetch + merge |
| How to undo last commit? | `git reset --soft HEAD~1` |
| How to avoid changing main directly? | Use branches + PRs |
| How to remove a file from Git only? | `git rm --cached file` |
| What is a fork? | A personal copy of a repo |
| How to track unpushed commits? | `git log origin/main..HEAD` |

---

## 📚 Git Glossary – 1-Liner Explanations

| Term | Meaning |
|------|---------|
| **Repository (Repo)** | A project's version-controlled folder. |
| **Commit** | A saved change snapshot. |
| **Branch** | A parallel version of code. |
| **Merge** | Combine branches together. |
| **Rebase** | Move commits to a new base branch. |
| **Staging Area** | Where changes wait before commit. |
| **HEAD** | The current branch or commit pointer. |
| **Remote** | A hosted version of your repo (e.g. GitHub). |
| **Clone** | A copy of a remote repo. |
| **Fork** | Your own copy of someone else’s repo. |
| **Pull Request (PR)** | Ask to merge your code into another branch. |
| **Upstream** | Original repo you forked from. |
| **Origin** | Default name for your remote. |
| **Stash** | Temporarily store uncommitted changes. |
| **Conflict** | Git can't auto-merge – manual fix needed. |
| **Tag** | Marks a specific commit (often a release). |
| **Diff** | Shows what's changed between commits or files. |
| **Checkout** | Switch branches or restore files. |
| **Cherry-pick** | Apply one commit from another branch. |
| **Bisect** | Find the commit that introduced a bug. |
| **Revert** | Create a new commit that undoes an old one. |
| **Reset** | Move HEAD and optionally discard changes. |
| **Submodule** | A repo inside another repo. |

---

## 🔗 Links & Downloads

- 📥 [Git Cheat Sheet PDF](https://education.github.com/git-cheat-sheet-education.pdf)
- 📖 [Pro Git Book](https://git-scm.com/book/en/v2)
- 💻 [IntelliJ Git Docs](https://www.jetbrains.com/help/idea/version-control-integration.html)
- ☁️ [Azure DevOps Git Docs](https://learn.microsoft.com/en-us/azure/devops/repos/git/)

---

Let me know if you want:
✅ Printable PDF • 🧠 Flashcards • 📱 Quiz App • 🔁 Pipeline setup help
