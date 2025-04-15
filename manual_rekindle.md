Here’s the **merged, user-friendly manual** with integrated troubleshooting, structured for clarity and ease of use. Key problems and solutions are highlighted at each step.

---

# **Rekindle Book Store Setup Manual**  
*Step-by-step guide with troubleshooting*  

---

## **1. Prerequisites**  
✅ **Preinstall these tools**:  
1. **IntelliJ IDEA** (Community/Ultimate)  
2. **Docker Desktop** (Running)  
3. **Git Bash**  

---

## **2. Repository Setup**  

### **Steps**  
1. **Create a project folder**:  
   ```bash
   mkdir C:\Projects\test-automation
   ```
2. **Clone the repository**:  
   ```bash
   git clone https://eysbp.visualstudio.com/gwtrn/_git/test-automation
   ```
3. **Open in IntelliJ**:  
   - Select **"Get from Version Control"** (not "New Project").  
   - Navigate to `C:\Projects\test-automation\rekindle-book-store`.  

### **Troubleshooting**  
| Issue | Solution |  
|-------|----------|  
| Git credentials error | Generate new credentials [here](#) → Copy-paste into IntelliJ. |  
| Missing `V8__Update_Bookstore_M_View.sql` | Merge `origin/master` into your branch:  
   ```bash
   git merge origin/master
   ```  

---

## **3. Installation**  

### **Java 21 (Amazon Corretto)**  
1. **Download**: [Corretto 21.0.1](https://corretto.aws/downloads/resources/21.0.1.12.1/amazon-corretto-21.0.1.12.1-windows-x64-jdk.zip)  
2. **Set system variables**:  
   - `JAVA_HOME`: `C:\Projects\jdk21.0.1_12`  
   - Add to `PATH`: `%JAVA_HOME%\bin`  

### **Gradle 8.5**  
1. **Download**: [Gradle 8.5](https://services.gradle.org/distributions/gradle-8.5-bin.zip)  
2. **Set system variables**:  
   - `GRADLE_HOME`: `C:\Projects\gradle-8.5`  
   - Add to `PATH`: `%GRADLE_HOME%\bin`  

### **Verify in IntelliJ**  
1. **File → Settings → Build Tools → Gradle**  
   - Set **Gradle JVM**: `Amazon Corretto 21`.  
   - Set **Gradle User Home**: `C:\Projects\gradle-8.5`.  

### **Troubleshooting**  
| Issue | Solution |  
|-------|----------|  
| `gradle` not recognized | Verify `PATH` includes `%GRADLE_HOME%\bin` and restart terminal. |  
| IntelliJ Gradle errors | Recheck `JAVA_HOME` and `GRADLE_HOME` paths. |  

---

## **4. Docker Setup**  
1. **Request license**: [Docker License Portal](https://codehub.ey.com/codehub/utilities/devtools-license-manager)  
2. **Install Docker Desktop**: [Download](https://docs.docker.com/desktop/install/windows-install/)  
3. **Fix credentials**:  
   - Delete `"credsStore": "desktop"` from `C:\Users\{USER}\.docker\config.json`.  

### **Troubleshooting**  
| Issue | Solution |  
|-------|----------|  
| Docker login fails | Reinstall Docker and retry license steps. |  

---

## **5. Kafka SSL Certificate**  
### **Error**: `SSL handshake failed`  
1. **Export certificate**:  
   - Visit [Confluent Maven](https://packages.confluent.io/maven/io/confluent/kafka-avro-serializer/7.5.1/kafka-avro-serializer-7.5.1.pom) → Click the **lock icon** → Export as `_.confluent.io.crt`.  
2. **Import certificate**:  
   ```powershell
   keytool -importcert -alias confluent -cacerts -file "C:\Projects\_.confluent.io.crt" -storepass changeit -noprompt
   ```  
3. **Verify**:  
   ```powershell
   keytool -list -cacerts -storepass changeit | findstr "confluent"
   ```  

### **Troubleshooting**  
| Issue | Solution |  
|-------|----------|  
| `keytool` not found | Use full path: `"C:\Projects\jdk21.0.1_12\bin\keytool.exe"`. |  
| Certificate errors | Delete old alias first:  
   ```powershell
   keytool -delete -alias confluent -cacerts -storepass changeit
   ```  

---

## **6. Database Setup**  
1. **Run PostgreSQL**:  
   ```bash
   docker-compose -f init_rekindle_database.yml up -d --wait
   ```  
2. **Migrate database**:  
   ```bash
   gradle flywayMigrate
   gradle flywayMigrate -p infrastructure/database-migrations/
   ```  

### **Troubleshooting**  
| Issue | Solution |  
|-------|----------|  
| `flywayMigrate` fails | Run commands from the **project root**, not subfolders. |  

---

## **7. Kafka & Microservices**  
1. **Start Kafka**:  
   ```bash
   docker-compose -f init_kafka_cluster.yml up -d
   docker-compose -f init_kafka_topics.yml up
   ```  
2. **Start microservices**:  
   ```bash
   docker-compose -f init_rekindle_app.yml up -d
   ```  

### **Troubleshooting**  
| Issue | Solution |  
|-------|----------|  
| Containers crash on startup | Restart Docker and retry. |  
| Port conflicts | Change ports in `.yml` files or stop conflicting services. |  

---

## **8. Verification**  
✅ **Check endpoints**:  
- Order Service: `http://localhost:8181/swagger-ui/index.html`  
- Eureka: `http://localhost:8761/`  

✅ **Verify PostgreSQL**:  
1. Install [pgAdmin](https://www.pgadmin.org/download/).  
2. Connect to `localhost:5432` (user: `postgres`, password: `admin`).  

---

## **Maintenance**  
### **Restart Services**  
```bash
# Stop all
docker-compose -f init_kafka_cluster.yml stop
docker-compose -f init_rekindle_app.yml stop

# Start all
docker-compose -f init_kafka_cluster.yml start
docker-compose -f init_rekindle_app.yml start
```  

### **Full Reinstall**  
1. **Delete all containers**:  
   ```bash
   docker rm -f $(docker ps -aq)
   ```  
2. **Repeat from [Configuration](#6-database-setup)**.  

---

## **Common Errors**  
| Error | Fix |  
|-------|-----|  
| `503 Service Unavailable` | Restart microservices. |  
| `404 Not Found` | Verify URL paths in Swagger. |  
| `400 Bad Request` | Check JSON payloads for typos. |  

---

This manual now **integrates all fixes** and is optimized for **first-time users**. Let me know if you'd like further refinements!
