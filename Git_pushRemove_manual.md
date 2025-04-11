
---

# **Git Push Guide**

This guide helps you push your local changes to a remote Git repository, handling common errors and exceptions, and offering troubleshooting steps. Use this as a reference whenever you work with Git to ensure smooth operations.

---

### **Step 1: Stage Your Changes**

Before committing, you need to tell Git which files to include in your commit.

**Command**:  
```bash
git add .
```

#### Why:
- The `git add .` command stages all modified files, newly created files, and deleted files for the next commit.
  
#### What Happens:
- All the local changes are staged for committing.

#### Error Handling:
- **Ignored Files**: If the file is in `.gitignore` (e.g., `node_modules`), it won’t be staged.
  - **Solution**: To force Git to add ignored files, use:
    ```bash
    git add -f <file-name>
    ```

---

### **Step 2: Check the Status**

Check the current status of your repository to see which files have been staged, modified, or are untracked.

**Command**:  
```bash
git status
```

#### Why:
- This will show the changes in your working directory, including which files are staged, modified, or untracked.
  
#### What Happens:
- Displays:
  - **Staged files**: Files ready to be committed.
  - **Untracked files**: Files not yet tracked by Git.
  - **Modified files**: Files that have been modified but not yet staged.

#### Error Handling:
- **Untracked Files**: If there are untracked files, it means they need to be added to Git.
  - **Solution**: Stage the untracked files with:
    ```bash
    git add <file-name>
    ```

---

### **Step 3: Commit Your Changes**

Now, you commit the staged changes to your local repository.

**Command**:  
```bash
git commit -m "Your commit message"
```

#### Why:
- This records the changes in the Git history, and the commit message helps explain what was done in this commit.
  
#### What Happens:
- Your changes are committed to the local repository, and you now have a snapshot of your work.

#### Commit Message Guidelines:
- A **brief** description of what was changed and why. For example, "Fixed bug in calculator logic".

#### Error Handling:
- **No Staged Changes**: If there are no staged changes, Git will display: "nothing to commit, working tree clean".
  - **Solution**: Use `git add .` to stage files and commit again.

---

### **Step 4: Push Your Changes to the Remote Repository**

After committing, you need to push the changes to the remote repository.

**Command**:  
```bash
git push origin <branch-name>
```

#### Why:
- This uploads your local commits to the remote repository (e.g., GitHub, GitLab), so others can access your changes.

#### What Happens:
- Your local commits are pushed to the remote repository, making them available to collaborators.

#### Error Handling:
- **Branch is Behind**: If your branch is behind the remote branch, Git will tell you.
  - **Solution**: Pull the changes from the remote first:
    ```bash
    git pull origin <branch-name>
    ```
    Resolve any conflicts, then push again.
  
- **Permission Denied**: If Git says "Permission denied (publickey)".
  - **Solution**: Check your authentication (SSH key or credentials).
  
---

### **Step 5: Troubleshoot Push Errors**

#### Common Errors and Solutions:

| **Error**                              | **Message**                          | **Solution**                                           |
|----------------------------------------|--------------------------------------|--------------------------------------------------------|
| Branch is Behind                       | Your branch is behind `origin/<branch>` | Run `git pull origin <branch-name>` to sync and resolve conflicts. |
| Permission Denied                      | Permission denied (publickey)         | Check your SSH key or credentials. If using HTTPS, make sure your username/password is correct. |
| Large File Rejection                   | Push rejected: file too large        | Use **Git LFS** (Large File Storage) for large files. Alternatively, remove large files from your commit:  
  ```bash
  git reset HEAD <large-file-name>
  git commit --amend
  ``` |

---

### **Step 6: Undo Changes if Necessary**

If you need to undo your last commit, you have a few options:

1. **Undo Last Commit but Keep Changes Locally**:
   ```bash
   git reset --soft HEAD~1
   ```
   - Keeps your changes in the staging area for recommit.

2. **Undo Last Commit and Discard Changes**:
   ```bash
   git reset --hard HEAD~1
   ```
   - Completely removes the last commit and discards the changes.

3. **Force Push Overwritten Commit**:
   If you’ve rewritten history or made changes you want to force to the remote:
   ```bash
   git push -f origin <branch-name>
   ```
   - Be careful, as this overwrites history in the remote repository.

---

### **Commands Summary**

| **Command**                      | **Description**                             |
|-----------------------------------|---------------------------------------------|
| `git add .`                       | Stages all modified files for commit       |
| `git status`                      | Shows the current status of your repository |
| `git commit -m "message"`         | Commits the staged changes with a message  |
| `git push origin <branch-name>`   | Pushes changes to the remote repository    |
| `git pull origin <branch-name>`   | Syncs your local branch with the remote    |
| `git reset --soft HEAD~1`         | Undoes the last commit but keeps changes   |
| `git reset --hard HEAD~1`         | Completely removes the last commit and changes |
| `git push -f origin <branch-name>`| Force push to overwrite remote history     |

---

### **Solution Tree for Common Issues**

1. **Do you see "nothing to commit, working tree clean"?**  
   - Yes → **Stage your files**:  
     ```bash
     git add .
     ```  
     - No → **Proceed to commit**.

2. **Do you see "Your branch is behind 'origin/<branch>' by X commits"?**  
   - Yes → **Pull from the remote repository**:  
     ```bash
     git pull origin <branch-name>
     ```  
     - Resolve any conflicts, commit, and push again.  
   - No → **Proceed to push**.

3. **Do you see "Permission denied (publickey)"?**  
   - Yes → **Check your SSH key or credentials**.  
     - If using HTTPS, recheck your username/password.  
   - No → **Proceed to push**.

4. **Do you see "Push rejected: file too large"?**  
   - Yes → **Use Git LFS** or remove the large file from the commit.  
     - Remove file:  
       ```bash
       git reset HEAD <large-file-name>
       git commit --amend
       ```  
   - No → **Proceed to push**.

---

Absolutely! Here's a complete and organized **cheat sheet** that covers everything you asked:  
- Navigating folders  
- Git tracking check  
- Removing a folder from tracking  
- Moving it locally  
- `echo` explained  
- A table of common terminal commands

---

## 🗂️ Terminal Navigation Cheat Sheet

| Command               | Description                                      | Example                                  |
|------------------------|--------------------------------------------------|------------------------------------------|
| `cd folderName`        | Change directory into a folder                  | `cd Task`                                |
| `cd ..`                | Go up one level (to parent folder)              | `cd ..`                                  |
| `cd ../OtherFolder`    | Go up and into a sibling folder                 | `cd ../Task_Backup`                      |
| `ls` (or `dir` in Win) | List files and folders in current directory     | `ls` or `dir`                            |
| `pwd`                  | Show current working directory path             | `pwd`                                    |

---

## 🔍 Git: Check & Remove Tracking for a Folder

### ✅ 1. **Check if Git is tracking a specific folder locally**

```bash
git ls-files | findstr /i task
```

> This searches Git's index for any files under the `task` folder.

---

### ✅ 2. **If it *is* tracked remotely — remove from Git tracking but keep it locally**

```bash
git rm -r --cached task/
```

Then:
```bash
echo "task/" >> .gitignore    # So Git will ignore it in future
git add .gitignore
git commit -m "Removed task folder from Git tracking, kept locally"
git push origin <branch-name>
```

📌 Now `task/` stays on your machine but is gone from GitHub.

---

### ✅ 3. **Move folder to another location locally**

Example: Move `task/` to `archived/task/`

```bash
mkdir -p archived            # Make a new folder if needed
mv task archived/           # Move the task folder
```

---

## 💬 What is `echo`?

`echo` is a terminal command used to **output text** or **write text to a file**.

| Syntax Example                      | What It Does                                |
|------------------------------------|---------------------------------------------|
| `echo Hello!`                      | Prints `Hello!` to the terminal             |
| `echo "task/" >> .gitignore`       | Appends `task/` to `.gitignore` file       |
| `echo "text" > file.txt`           | Overwrites file.txt with `text`            |
| `echo "another" >> file.txt`       | Appends `another` to file.txt              |

🧠 Use `>` to overwrite, `>>` to append.

---

## 🛠️ Other Helpful Terminal Commands

| Command              | Purpose                                           | Example                                       |
|----------------------|---------------------------------------------------|-----------------------------------------------|
| `touch filename`     | Create an empty file                             | `touch readme.md`                             |
| `mkdir folder`       | Create a folder                                  | `mkdir logs`                                  |
| `rm file`            | Delete a file                                    | `rm temp.txt`                                 |
| `rm -r folder`       | Delete a folder and contents                     | `rm -r old_files/`                            |
| `mv source target`   | Move or rename files/folders                     | `mv task/ archived/`                          |
| `cp source target`   | Copy files or folders                            | `cp config.txt backup/config.txt`             |
| `cat filename`       | Display contents of a file                       | `cat .gitignore`                              |
| `findstr "word" file`| Search for a word in a file (Windows)            | `findstr "task" .gitignore`                   |

---




