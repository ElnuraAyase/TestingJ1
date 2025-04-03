
## **Understanding Gradle and Maven**

### **What is Maven?**
- **Maven** is a build automation tool used for Java projects.
- It simplifies the process of compiling, testing, packaging, and deploying code.
- **Maven** uses **`pom.xml`** to manage dependencies, build configurations, and plugins.

### **What is Gradle?**
- **Gradle** is also a build automation tool, like Maven.
- It’s more flexible and supports multi-language projects (Java, Groovy, etc.).
- It uses **`build.gradle`** for configurations and supports a more programmatic, script-based approach than Maven.

### **Key Differences:**
- **Maven** is more declarative and XML-based.
- **Gradle** is more flexible and script-based (using Groovy or Kotlin).

---

## **How to Check if the Project Uses Maven or Gradle**

### **Step 1: Look for Specific Files**
Before installing dependencies or configuring your project, it’s important to determine whether your project is using **Maven** or **Gradle**.

1. **Check for Maven**:
   - **Look for a `pom.xml` file** in the root directory of your project. This file is specific to **Maven** and will contain all the configuration for your project, including dependencies, plugins, and build information.
   - **Example**: If you find a `pom.xml` file, then your project is using **Maven**.

2. **Check for Gradle**:
   - **Look for a `build.gradle` or `settings.gradle` file** in the root directory. These files are specific to **Gradle** and will contain build scripts, configurations, and dependencies.
   - **Example**: If you find a `build.gradle` file, then your project is using **Gradle**.

### **Step 2: Check IntelliJ IDEA (for IDE Users)**

If you are using **IntelliJ IDEA**, it’s easy to tell what build tool your project uses by checking the **Project Structure**:
   
- **Maven Project**:  
  - In IntelliJ IDEA, if you see a **Maven** option on the right-hand side (in the **Maven Tool Window**), your project is using Maven.
  
- **Gradle Project**:  
  - If you see a **Gradle** option instead, your project is using Gradle.

---

### **Step 3: Check the Project’s Settings or Documentation**
If you’re still unsure after looking at the files and the IDE, check the project’s **documentation** or ask your team. They might provide details about which build tool is being used.

---

## **Why Use Maven with TestNG?**

### **Why Maven is Recommended for TestNG:**
1. **Simple Dependency Management**:
   - Maven has a well-defined system for adding libraries (like TestNG) using **dependencies**.
   - TestNG can be added with a simple **dependency** entry in the `pom.xml` file.

2. **TestNG Integration**:
   - Maven makes it easy to run your tests with TestNG using **Maven's Surefire plugin**.
   - It handles running the tests in a structured way, making test execution simple.

3. **Reproducibility**:
   - With Maven, you can ensure that every developer and build server is using the same versions of TestNG and other libraries.
   - This avoids "it works on my machine" problems.

4. **Easier Setup**:
   - Maven automatically downloads all dependencies (like TestNG) and manages versions, so you don’t have to worry about manually setting things up.

---

## **How to Use Maven**

### **Basic Steps to Use Maven:**
1. **Install Maven**:
   - Download and install Maven from the official site: [Maven Downloads](https://maven.apache.org/download.cgi).
   - Set up **Maven** in your system's environment variables.
   
2. **Create a Maven Project**:
   - In IntelliJ IDEA, you can easily create a new Maven project by selecting **File > New > Project** and choosing **Maven**.

3. **Run Maven Commands**:
   - **Clean**: `mvn clean` - Cleans the project (removes compiled files).
   - **Compile**: `mvn compile` - Compiles the project.
   - **Test**: `mvn test` - Runs the tests using Maven.

4. **Adding Dependencies**:
   - Maven uses the `pom.xml` file to add dependencies (like TestNG).

---

## **How to Install TestNG Using Maven (pom.xml)**

### **Steps to Add TestNG to Your Project:**
1. **Open `pom.xml`**:
   - This file is where you define all your dependencies and build settings.
   
2. **Add the TestNG Dependency**:
   - Inside the `<dependencies>` tag, add the following code:
   
   ```xml
   <dependencies>
       <!-- TestNG Dependency -->
       <dependency>
           <groupId>org.testng</groupId>
           <artifactId>testng</artifactId>
           <version>7.7.0</version> <!-- Or latest version -->
           <scope>test</scope> <!-- This means it's only needed for testing -->
       </dependency>
   </dependencies>
   ```
1. Original pom.xml (Before Adding TestNG)
This is how your original pom.xml looks before adding the TestNG dependency:

xml
Copy
Edit
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>Calculator_Task</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>21</maven.compiler.source>
        <maven.compiler.target>21</maven.compiler.target>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    </properties>
</project>
In this file:

There is no <dependencies> section yet.

The file is set up for a basic Maven project with compiler settings but does not include any dependencies for libraries such as TestNG.

2. Updated pom.xml (After Adding TestNG)
Here’s how your pom.xml will look after adding the TestNG dependency in the <dependencies> section:

xml
Copy
Edit
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>Calculator_Task</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>21</maven.compiler.source>
        <maven.compiler.target>21</maven.compiler.target>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    </properties>

    <dependencies>
        <!-- TestNG Dependency -->
        <dependency>
            <groupId>org.testng</groupId>
            <artifactId>testng</artifactId>
            <version>7.7.0</version> <!-- Or the latest version -->
            <scope>test</scope> <!-- This means it's only needed for testing -->
        </dependency>
    </dependencies>
</project>
Key Changes:
Addition of the <dependencies> section:

This was not present in the original pom.xml file.

The <dependencies> section is where you specify all external libraries (such as TestNG) that your project depends on.
3. **Sync Maven**:
   - After adding the dependency, refresh your Maven project to download TestNG.
   - In IntelliJ IDEA, click on the **Maven** tool window (right side) and click **Refresh**.

---

## **How to Use TestNG in Your Project**

### **Steps to Use TestNG for Testing**:
1. **Create a Test Class**:
   - Right-click the **`src/test/java`** folder.
   - Select **New > Java Class** and name it something like `CalculatorTest`.

2. **Write Your Tests**:
   - Use the `@Test` annotation to mark methods as tests.
   
   Example:
   ```java
   import org.testng.Assert;
   import org.testng.annotations.Test;

   public class CalculatorTest {

       @Test
       public void testAddition() {
           Calculator calculator = new Calculator();
           Assert.assertEquals(calculator.add(2, 3), 5);
       }
   }
   ```

3. **Run Tests**:
   - Right-click the test class in IntelliJ IDEA and choose **Run 'CalculatorTest'** to run your tests.
   - IntelliJ will display the results in the **Run** window.

---

## **Maven TestNG Integration (Maven Surefire Plugin)**

### **Running TestNG with Maven**:
Maven can run your TestNG tests automatically using the **Maven Surefire Plugin**. This is useful when you run tests on build servers or want to execute them without manually triggering each test.

1. **Add Surefire Plugin to `pom.xml`**:
   - In the `<build>` section of your `pom.xml`, add the following configuration:
   
   ```xml
   <build>
       <plugins>
           <plugin>
               <groupId>org.apache.maven.plugins</groupId>
               <artifactId>maven-surefire-plugin</artifactId>
               <version>2.22.2</version> <!-- Latest version -->
           </plugin>
       </plugins>
   </build>
   ```

2. **Run Tests with Maven**:
   - Once configured, run the following command to execute your tests:
   ```sh
   mvn test
   ```
   This will run all TestNG tests in your project.

---

## **Summary**

1. **Maven**:
   - A tool to manage dependencies and automate build processes for Java projects.
   - Uses `pom.xml` to manage libraries, build plugins, and other configurations.

2. **Gradle**:
   - Another build tool, but more flexible and script-based compared to Maven.

3. **Why Use Maven with TestNG**:
   - Simple dependency management.
   - Seamless integration with **TestNG**.
   - Reproducibility and consistency in build processes.

4. **How to Install TestNG with Maven**:
   - Add the TestNG dependency to your `pom.xml` file under `<dependencies>`.
   - Sync your Maven project to download TestNG.

5. **Using TestNG**:
   - Create test classes with `@Test` annotations and use assertions to validate behavior.

6. **Run Tests with Maven**:
   - Use the **Maven Surefire Plugin** to run your TestNG tests automatically.

---

### **Final Tips**:
- **Always Refresh Maven** after modifying `pom.xml` to make sure dependencies are downloaded.
- **Keep it Simple**: Don’t hesitate to look at other projects to understand how to set up Maven or TestNG.
- **Stay Consistent**: Use Maven to handle dependencies, and TestNG to write consistent and effective tests.

---
