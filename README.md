
## **Git and Azure DevOps: Step-by-Step Guide for Beginners**

### **1. Clone the Repository from Azure DevOps**
- **Step 1:** Open Azure DevOps and go to your project.
- **Step 2:** Click on **Repos** (on the left side).
- **Step 3:** Find the **Clone** button on the right, and copy the URL.
- **Step 4:** Open **Git Bash** (or any Git terminal).
- **Step 5:** Clone the repository to your local machine:
  ```sh
  git clone <repository-url>
  ```
  Example:
  ```sh
  git clone https://dev.azure.com/yourorganization/yourproject/_git/your-repository
  ```

### **2. Creating a New Branch for Your Work**
- **Step 1:** Navigate to your project folder in the terminal:
  ```sh
  cd your-repository
  ```
- **Step 2:** Create a new branch based on the `master` (or `main`) branch:
  ```sh
  git checkout -b your-branch-name
  ```
  Example:
  ```sh
  git checkout -b feature/CalculatorTask
  ```

### **3. Make Changes to Your Project**
- Edit or add files in your project as needed (e.g., creating the `Calculator_Task` folder).

### **4. Check Git Status**
- **Step 1:** To see what changes you've made, use:
  ```sh
  git status
  ```
- **Step 2:** It will show you which files are modified or untracked (new files).

### **5. Stage Your Changes**
- **Step 1:** Stage the files to be committed by using:
  ```sh
  git add .
  ```
  This stages all changes (new files, modified files) in your project.
  
  - To stage specific files, use:
    ```sh
    git add <file-name>
    ```

### **6. Commit Your Changes**
- **Step 1:** Commit the staged changes with a meaningful message:
  ```sh
  git commit -m "Your commit message"
  ```
  Example:
  ```sh
  git commit -m "Added Calculator_Task folder"
  ```

### **7. Push Your Changes to Azure DevOps**
- **Step 1:** To push your committed changes to Azure DevOps, use:
  ```sh
  git push
  ```
- **Step 2:** If this is your first time pushing the branch, set the upstream branch with:
  ```sh
  git push -u origin your-branch-name
  ```
  Example:
  ```sh
  git push -u origin feature/CalculatorTask
  ```

### **8. Verify Changes in Azure DevOps**
- Go to **Azure DevOps**, open your **Repository**, and check the branch.
- Your changes should be visible under your branch name.

### **9. Pull Changes from Remote**
- **Step 1:** If you need to get the latest changes from the remote repository:
  ```sh
  git pull
  ```
  This fetches the latest updates from the remote branch and merges them into your local branch.

### **10. Merging Your Branch to Master (Optional)**
Once your feature or changes are complete, you may need to merge your branch into the main branch.

- **Step 1:** Switch to the `master` (or `main`) branch:
  ```sh
  git checkout master
  ```
- **Step 2:** Pull the latest updates from `master`:
  ```sh
  git pull
  ```
- **Step 3:** Merge your feature branch into `master`:
  ```sh
  git merge your-branch-name
  ```
  Example:
  ```sh
  git merge feature/CalculatorTask
  ```

- **Step 4:** Push the updated `master` branch to Azure DevOps:
  ```sh
  git push
  ```

### **11. Handling Conflicts**
- If Git shows **merge conflicts**:
  - Open the conflicted files in your code editor.
  - Resolve the conflicts manually (keeping the correct version).
  - After resolving, stage the files again:
    ```sh
    git add <resolved-file>
    ```
  - Finally, commit the changes:
    ```sh
    git commit -m "Resolved merge conflict"
    ```

---

### **Common Git Commands to Remember:**

- **Check the status of files**:
  ```sh
  git status
  ```

- **Stage all changes**:
  ```sh
  git add .
  ```

- **Stage a specific file**:
  ```sh
  git add <file-name>
  ```

- **Commit your changes**:
  ```sh
  git commit -m "Your commit message"
  ```

- **Push changes to remote repository**:
  ```sh
  git push
  ```

- **Pull changes from remote repository**:
  ```sh
  git pull
  ```

- **Create a new branch**:
  ```sh
  git checkout -b new-branch-name
  ```

- **Switch to an existing branch**:
  ```sh
  git checkout branch-name
  ```

---

### **Tips for Beginners:**
- **Always commit frequently**: Try to commit after making small, meaningful changes.
- **Write clear commit messages**: A good commit message explains what you’ve changed and why.
- **Pull before pushing**: Before pushing your changes, always pull the latest changes from the remote repository to avoid conflicts.

---

### **Troubleshooting**
- **"Permission Denied" on Push**: Ensure you have the correct permissions in Azure DevOps and that you're authenticated with Git. If you are asked for credentials, provide them.
- **Merge Conflicts**: Resolve conflicts by opening the files and editing them. Git will mark the conflict areas, and you can choose which version to keep.

---

### **Final Notes:**
This guide helps you get started with basic Git operations in Azure DevOps. With these steps, you’ll be able to **clone repositories**, **create branches**, **commit changes**, and **push** to the remote repo seamlessly!

---

\
