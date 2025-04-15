

---

# 🔥 Rekindle Book Store — Setup Manual

## 📚 Table of Contents
1. [✅ Preinstallation Checklist](#✅-preinstallation-checklist)  
2. [📁 Repository Setup](#📁-repository-setup)  
3. [☕ Java Installation](#☕-java-installation)  
4. [⚙️ Gradle Setup](#⚙️-gradle-setup)  
5. [🐳 Docker Configuration](#🐳-docker-configuration)  
6. [🔐 Kafka SSL Certificate](#🔐-kafka-ssl-certificate)  
7. [🗄️ Database Configuration](#🗄️-database-configuration)  
8. [🚀 Service Deployment](#🚀-service-deployment)  
9. [🔍 Verification](#🔍-verification)  
10. [🛠️ Maintenance](#🛠️-maintenance)  
11. [❗ Troubleshooting Guide](#❗-troubleshooting-guide)

---

## ✅ Preinstallation Checklist

> 💻 Required Tools:
- IntelliJ IDEA (Community or Ultimate)
- Docker Desktop
- Git Bash

> ✅ To verify installations:
```bash
docker --version
git --version
```

---

## 📁 Repository Setup

<details>
<summary><strong>📂 Setup Steps</strong></summary>

1. **Create project folder**
   ```bash
   mkdir C:\Projects\test-automation
   ```

2. **Clone the repository**
   ```bash
   git clone https://eysbp.visualstudio.com/gwtrn/_git/test-automation
   ```

3. **Open in IntelliJ**
   - Select **"Get from Version Control"**
   - Do **NOT** create a new project manually
   - When asked for credentials:
     - Visit the credentials portal
     - Generate and paste them into IntelliJ
</details>

<details>
<summary><strong>🔧 Troubleshooting</strong></summary>

| ❌ Problem | ✅ Solution |
|-----------|-------------|
| Missing project folder | Create `C:\Projects\test-automation` manually |
| Credential issues | Always use fresh credentials from portal |
| Missing SQL migration | Run:<br>`git merge origin/master` |
</details>

---

## ☕ Java Installation

<details>
<summary><strong>📥 Install Amazon Corretto 21</strong></summary>

1. **Download JDK**  
   [Download Amazon Corretto 21 (Windows x64)](https://corretto.aws/downloads/resources/21.0.1.12.1/amazon-corretto-21.0.1.12.1-windows-x64-jdk.zip)

2. **Extract to**:
   ```
   C:\Projects\jdk21.0.1_12
   ```

3. **Set Environment Variables**:
   ```bash
   JAVA_HOME = C:\Projects\jdk21.0.1_12
   PATH += %JAVA_HOME%\bin
   ```

4. **In IntelliJ**:
   - Go to `Settings → Build Tools → Gradle`
   - Set **Gradle JVM** to Amazon Corretto 21
</details>

<details>
<summary><strong>⚠️ Critical Notes</strong></summary>

> ⚠️ Gradle must be installed **before** setting Java in IntelliJ  
> 📁 Project files live inside `/rekindle-book-store` folder
</details>

<details>
<summary><strong>🔧 Troubleshooting</strong></summary>

| ❌ Error | 🛠️ Fix |
|---------|--------|
| Java not recognized | Ensure `JAVA_HOME` points to a full JDK |
| IntelliJ errors | 1. Confirm Java 21 is selected<br>2. Reimport Gradle project |
</details>

---

## ⚙️ Gradle Setup

<details>
<summary><strong>📦 Setup Steps</strong></summary>

1. **Download Gradle 8.5**  
   [Download](https://services.gradle.org/distributions/gradle-8.5-bin.zip)

2. **Extract to**:
   ```
   C:\Projects\gradle-8.5
   ```

3. **Set Environment Variables**:
   ```bash
   GRADLE_HOME = C:\Projects\gradle-8.5
   PATH += %GRADLE_HOME%\bin
   ```

4. **Verify installation**:
   ```bash
   gradle --version
   ```
</details>

<details>
<summary><strong>🔧 Troubleshooting</strong></summary>

| ❌ Error | 🛠️ Fix |
|---------|--------|
| Gradle not recognized | 1. Check PATH<br>2. Restart terminal |
| Build fails | Delete `build` folder and run:<br>`gradle clean build` |
</details>

---

## 🐳 Docker Configuration

<details>
<summary><strong>⚙️ Steps</strong></summary>

1. **Request Docker license** via engagement portal  
2. **Install Docker Desktop**  
3. **Update Docker config**:
   - Remove this line from:  
     ```
     C:\Users\{USER}\.docker\config.json
     ```
     ```json
     "credsStore": "desktop"
     ```
</details>

<details>
<summary><strong>🔧 Troubleshooting</strong></summary>

| ❌ Issue | ✅ Solution |
|---------|-------------|
| Login failures | Reinstall Docker and reapply license |
| Port conflicts | Update ports in `.yml` files |
</details>

---

## 🔐 Kafka SSL Certificate

<details>
<summary><strong>🔒 Steps</strong></summary>

1. **Download certificate** from [Confluent Maven](https://packages.confluent.io/maven/)  
2. **Import certificate**:
   ```powershell
   & "$JAVA_HOME\bin\keytool.exe" -importcert -alias confluent -cacerts -file "_.confluent.io.crt" -storepass changeit -noprompt
   ```
</details>

<details>
<summary><strong>🔧 Troubleshooting</strong></summary>

| 🧩 Problem | 🛠️ Command |
|-----------|------------|
| Alias already exists | `keytool -delete -alias confluent -cacerts` |
| Verify certificate | `keytool -list -cacerts | findstr "confluent"` |
</details>

---

## 🗄️ Database Configuration

<details>
<summary><strong>📦 Setup Steps</strong></summary>

1. **Start PostgreSQL**:
   ```bash
   docker-compose -f init_rekindle_database.yml up -d --wait
   ```

2. **Run migrations** *(run from project root!)*:
   ```bash
   cd C:\Projects\test-automation\rekindle-book-store
   gradle flywayMigrate
   ```
</details>

<details>
<summary><strong>🔧 Troubleshooting</strong></summary>

| ❌ Error | ✅ Fix |
|---------|--------|
| Migration fails | 1. Ensure you’re in root dir<br>2. Confirm PostgreSQL is running |
</details>

---

## 🚀 Service Deployment

<details>
<summary><strong>🔧 Startup Steps</strong></summary>

1. **Start Kafka Cluster**:
   ```bash
   docker-compose -f init_kafka_cluster.yml up -d
   ```

2. **Start App Services**:
   ```bash
   docker-compose -f init_rekindle_app.yml up -d
   ```

3. **Verify**:
   ```bash
   docker ps
   ```
</details>

---

## 🔍 Verification

✅ **Check services**:
- Swagger UI: [http://localhost:8181/swagger-ui/index.html](http://localhost:8181/swagger-ui/index.html)  
- Eureka Dashboard: [http://localhost:8761/](http://localhost:8761/)

✅ **Verify DB**:
1. Install [pgAdmin](https://www.pgadmin.org/download/)  
2. Connect to:  
   ```
   Host: localhost  
   Port: 5432  
   Username: postgres  
   Password: admin  
   ```

---

## 🛠️ Maintenance

<details>
<summary><strong>♻️ Restart Sequence</strong></summary>

```bash
# Stop services
docker-compose -f init_kafka_cluster.yml stop
docker-compose -f init_rekindle_app.yml stop

# Start services
docker-compose -f init_kafka_cluster.yml start
docker-compose -f init_rekindle_app.yml start
```
</details>

---

## ❗ Troubleshooting Guide

<details>
<summary><strong>🔥 Common Issues</strong></summary>

| 🐞 Error | 🛠️ Solution |
|---------|--------------|
| `503 Service Unavailable` | Restart all services |
| `PKIX path failed` | Reimport Kafka cert |
| Gradle build failed | 1. Verify paths<br>2. Run `gradle clean` |
</details>

---

### ✅ Visual Checklist
- [ ] All Docker containers are **Running**
- [ ] Swagger endpoints respond correctly
- [ ] pgAdmin shows all schemas and tables

---

## 📎 Downloadable Versions

- 📄 Printable HTML Version: [Rekindle Setup Manual (HTML)](sandbox:/mnt/data/rekindle_setup_manual.html)   
- 📕 PDF Version: [Rekindle Setup Manual (PDF)](sandbox:/mnt/data/rekindle_setup_manual.pdf) 

These files provide an easy-to-print and shareable version of the Rekindle Book Store Setup Manual.

---

