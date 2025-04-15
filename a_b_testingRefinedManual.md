Here's the fully merged and optimized manual with integrated troubleshooting, structured for clarity and ease of use:

# **Rekindle Book Store Setup Manual**  
*Complete guide with integrated troubleshooting*

---

## **1. Preinstallation Checklist**  
✅ **Required Tools**:
1. **IntelliJ IDEA** (Community/Ultimate)
2. **Docker Desktop**
3. **Git Bash**

❗ **Verification**:
- Run `docker --version` in Git Bash to confirm Docker installation
- Check IntelliJ launches properly

---

## **2. Repository Setup**  

### **Step-by-Step Instructions**
1. **Create project folder** (Critical missing step):
   ```bash
   mkdir C:\Projects\test-automation
   ```
2. **Clone repository**:
   ```bash
   git clone https://eysbp.visualstudio.com/gwtrn/_git/test-automation
   ```
3. **IntelliJ setup**:
   - Select **"Get from Version Control"** → **NOT** "New Project"
   - When prompted for credentials:
     1. Access credentials portal (manual link)
     2. Generate new credentials
     3. Copy-paste into IntelliJ

### **Troubleshooting**
| Problem | Solution |
|---------|----------|
| Missing project folder | Manually create `C:\Projects\test-automation` first |
| Credential errors | Always generate fresh credentials from portal |
| Missing `V8__Update...sql` | Run: `git merge origin/master` |

---

## **3. Java Installation**  

### **Corrected Installation Flow**
1. **Download Amazon Corretto 21**:
   - [Direct Download Link](https://corretto.aws/downloads/resources/21.0.1.12.1/amazon-corretto-21.0.1.12.1-windows-x64-jdk.zip)
   - Extract to `C:\Projects\jdk21.0.1_12`

2. **System Variables**:
   ```powershell
   JAVA_HOME = C:\Projects\jdk21.0.1_12
   PATH += %JAVA_HOME%\bin
   ```

3. **IntelliJ Configuration**:
   - File → Settings → Build Tools → Gradle
   - Set Gradle JVM to Amazon Corretto 21

### **Critical Fixes**
❗ **Gradle must be installed FIRST** before Java configuration in IntelliJ

---

## **4. Gradle Setup**  

### **Installation Process**
1. **Download Gradle 8.5**:
   - [Gradle 8.5](https://services.gradle.org/distributions/gradle-8.5-bin.zip)
   - Extract to `C:\Projects\gradle-8.5`

2. **System Variables**:
   ```powershell
   GRADLE_HOME = C:\Projects\gradle-8.5
   PATH += %GRADLE_HOME%\bin
   ```

### **Troubleshooting**
| Error | Solution |
|-------|----------|
| `gradle not recognized` | 1. Verify PATH contains `%GRADLE_HOME%\bin`<br>2. Reboot terminal<br>3. Check for special characters in paths |
| IntelliJ Gradle errors | 1. Verify Java 21 is selected<br>2. Check Gradle user home path |

---

## **5. Kafka SSL Certificate**  

### **Complete Solution**
1. **Export Certificate**:
   - Visit [Confluent Maven](https://packages.confluent.io/maven/)
   - Export certificate as `_.confluent.io.crt`

2. **Import Certificate**:
   ```powershell
   & "C:\Projects\jdk21.0.1_12\bin\keytool.exe" -importcert -alias confluent -cacerts -file "C:\Projects\_.confluent.io.crt" -storepass changeit -noprompt
   ```

### **Troubleshooting Table**
| Issue | Command |
|-------|---------|
| Alias exists | `keytool -delete -alias confluent -cacerts` |
| Verify import | `keytool -list -cacerts \| findstr "confluent"` |

---

## **6. Database Configuration**  

### **Correct Execution Flow**
1. **Start PostgreSQL**:
   ```bash
   docker-compose -f init_rekindle_database.yml up -d --wait
   ```

2. **Run Migrations** (Must be from root!):
   ```bash
   cd C:\Projects\test-automation\rekindle-book-store
   gradle flywayMigrate
   gradle flywayMigrate -p infrastructure/database-migrations/
   ```

### **Critical Note**
❌ Never run flyway commands from subdirectories

---

## **7. Service Deployment**  

### **Proper Startup Sequence**
1. **Kafka Cluster**:
   ```bash
   docker-compose -f init_kafka_cluster.yml up -d
   docker-compose -f init_kafka_topics.yml up
   ```

2. **Microservices**:
   ```bash
   docker-compose -f init_rekindle_app.yml up -d
   ```

### **Verification**
✅ Check all containers are running:
```bash
docker ps
```

---

## **8. Maintenance Procedures**  

### **Restart Sequence**
```bash
# Stop services
docker-compose -f init_kafka_cluster.yml stop
docker-compose -f init_rekindle_app.yml stop

# Start services
docker-compose -f init_kafka_cluster.yml start
docker-compose -f init_rekindle_app.yml start
```

### **Complete Reinstall**
1. **Remove all containers**:
   ```bash
   docker rm -f $(docker ps -aq)
   ```
2. **Repeat from [Configuration](#6-database-configuration)**

---

## **Integrated Troubleshooting Guide**  

### **Common Errors & Fixes**
| Error | Solution |
|-------|----------|
| `503 Service Unavailable` | Full service restart |
| `PKIX path building failed` | Reimport Kafka certificate |
| `Gradle build failed` | 1. Verify paths<br>2. Clean project<br>3. Reclone repository |

### **Visual Verification Checklist**
- [ ] All Docker containers show "Running"
- [ ] Swagger endpoints respond
- [ ] pgAdmin shows all schemas

---

This manual now:
1. Integrates all original content
2. Embeds troubleshooting at each step
3. Corrects sequence errors from original
4. Provides clear verification steps
5. Uses consistent formatting for commands

Would you like me to add any specific troubleshooting scenarios or visual aids?
