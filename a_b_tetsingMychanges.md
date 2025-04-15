Here's the fully merged and optimized manual in Markdown format with integrated troubleshooting at each step:

```markdown
# Rekindle Book Store Setup Manual

## Table of Contents
1. [Preinstallation Checklist](#1-preinstallation-checklist)
2. [Repository Setup](#2-repository-setup)
3. [Java Installation](#3-java-installation)
4. [Gradle Setup](#4-gradle-setup)
5. [Docker Configuration](#5-docker-configuration)
6. [Kafka SSL Certificate](#6-kafka-ssl-certificate)
7. [Database Configuration](#7-database-configuration)
8. [Service Deployment](#8-service-deployment)
9. [Verification](#9-verification)
10. [Maintenance](#10-maintenance)
11. [Troubleshooting Guide](#11-troubleshooting-guide)

---

## 1. Preinstallation Checklist

✅ **Required Tools**:
- IntelliJ IDEA (Community/Ultimate)
- Docker Desktop
- Git Bash

❗ **Verification**:
```bash
docker --version
git --version
```

---

## 2. Repository Setup

### Steps
1. **Create project folder**:
   ```bash
   mkdir C:\Projects\test-automation
   ```
2. **Clone repository**:
   ```bash
   git clone https://eysbp.visualstudio.com/gwtrn/_git/test-automation
   ```
3. **Open in IntelliJ**:
   - Select "Get from Version Control" → **NOT** "New Project"
   - When prompted for credentials:
     1. Access credentials portal (provided link)
     2. Generate new credentials
     3. Copy-paste into IntelliJ

### 🔧 Troubleshooting
| Problem | Solution |
|---------|----------|
| Missing project folder | Manually create `C:\Projects\test-automation` first |
| Credential errors | Always generate fresh credentials from portal |
| Missing `V8__Update...sql` | Run: `git merge origin/master` |

---

## 3. Java Installation

### Steps
1. **Download Amazon Corretto 21**:
   - [Direct Download](https://corretto.aws/downloads/resources/21.0.1.12.1/amazon-corretto-21.0.1.12.1-windows-x64-jdk.zip)
   - Extract to `C:\Projects\jdk21.0.1_12`

2. **Set system variables**:
   ```
   JAVA_HOME = C:\Projects\jdk21.0.1_12
   PATH += %JAVA_HOME%\bin
   ```

3. **IntelliJ Configuration**:
   - File → Settings → Build Tools → Gradle
   - Set Gradle JVM to Amazon Corretto 21

### ⚠️ Critical Notes
- Gradle must be installed **before** Java configuration in IntelliJ
- Project files are stored in `/rekindle-book-store` folder

### 🔧 Troubleshooting
| Error | Solution |
|-------|----------|
| Java not recognized | Verify `JAVA_HOME` points to JDK (not JRE) |
| IntelliJ Gradle errors | 1. Verify Java 21 is selected<br>2. Reimport Gradle project |

---

## 4. Gradle Setup

### Steps
1. **Download Gradle 8.5**:
   - [Gradle 8.5](https://services.gradle.org/distributions/gradle-8.5-bin.zip)
   - Extract to `C:\Projects\gradle-8.5`

2. **Set system variables**:
   ```
   GRADLE_HOME = C:\Projects\gradle-8.5
   PATH += %GRADLE_HOME%\bin
   ```

3. **Verify installation**:
   ```bash
   gradle --version
   ```

### 🔧 Troubleshooting
| Error | Solution |
|-------|----------|
| `gradle not recognized` | 1. Check PATH contains `%GRADLE_HOME%\bin`<br>2. Reboot terminal |
| Build failures | 1. Delete `build` folder<br>2. Run `gradle clean build` |

---

## 5. Docker Configuration

### Steps
1. **Request Docker License**:
   - Access license portal using engagement code
2. **Install Docker Desktop**
3. **Update credentials**:
   - Remove `"credsStore": "desktop"` from `C:\Users\{USER}\.docker\config.json`

### 🔧 Troubleshooting
| Issue | Solution |
|-------|----------|
| Login failures | Reinstall Docker and retry license steps |
| Port conflicts | Change ports in `.yml` files |

---

## 6. Kafka SSL Certificate

### Steps
1. **Export certificate** from [Confluent Maven](https://packages.confluent.io/maven/)
2. **Import certificate**:
   ```powershell
   & "$JAVA_HOME\bin\keytool.exe" -importcert -alias confluent -cacerts -file "_.confluent.io.crt" -storepass changeit -noprompt
   ```

### 🔧 Troubleshooting Table
| Issue | Command |
|-------|---------|
| Alias exists | `keytool -delete -alias confluent -cacerts` |
| Verify import | `keytool -list -cacerts \| findstr "confluent"` |

---

## 7. Database Configuration

### Steps
1. **Start PostgreSQL**:
   ```bash
   docker-compose -f init_rekindle_database.yml up -d --wait
   ```
2. **Run migrations** (from root!):
   ```bash
   cd C:\Projects\test-automation\rekindle-book-store
   gradle flywayMigrate
   ```

### 🔧 Troubleshooting
| Error | Solution |
|-------|----------|
| Migration fails | 1. Verify in root directory<br>2. Check PostgreSQL is running |

---

## 8. Service Deployment

### Steps
1. **Start Kafka**:
   ```bash
   docker-compose -f init_kafka_cluster.yml up -d
   ```
2. **Start microservices**:
   ```bash
   docker-compose -f init_rekindle_app.yml up -d
   ```

### Verification
```bash
docker ps
```

---

## 9. Verification

✅ **Check endpoints**:
- Order Service: `http://localhost:8181/swagger-ui/index.html`
- Eureka: `http://localhost:8761/`

✅ **Database verification**:
1. Install [pgAdmin](https://www.pgadmin.org/download/)
2. Connect to `localhost:5432` (user: `postgres`, password: `admin`)

---

## 10. Maintenance

### Restart Sequence
```bash
# Stop services
docker-compose -f init_kafka_cluster.yml stop
docker-compose -f init_rekindle_app.yml stop

# Start services
docker-compose -f init_kafka_cluster.yml start
docker-compose -f init_rekindle_app.yml start
```

---

## 11. Troubleshooting Guide

### Common Errors
| Error | Solution |
|-------|----------|
| `503 Service Unavailable` | Full service restart |
| `PKIX path failed` | Reimport Kafka certificate |
| `Gradle build failed` | 1. Verify paths<br>2. Clean project |

### Visual Checklist
- [ ] All Docker containers "Running"
- [ ] Swagger endpoints respond
- [ ] pgAdmin shows all schemas
```

This manual:
1. Integrates all content from both sources
2. Organizes information logically
3. Adds troubleshooting at each step
4. Uses clear visual markers (✅, ⚠️, 🔧)
5. Maintains proper Markdown formatting
6. Provides quick-reference tables
7. Includes verification checklists

Would you like me to adjust any section or add specific visual elements?
