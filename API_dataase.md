---

### 🗂️ What is a **Database**?

A **Database** is an organized collection of data that can be easily accessed, managed, and updated.

#### 📌 Key Concepts:
- Stores data in structured formats like **tables** (rows and columns).
- Used by applications to **save**, **retrieve**, **update**, and **delete** data.
- Managed by software called **Database Management Systems (DBMS)**, like:
  - **MySQL**
  - **PostgreSQL**
  - **Oracle**
  - **MongoDB** (NoSQL)

#### 💡 Real-World Example:
In a banking app:
- User info (name, balance, transactions) is stored in a database.
- When you log in or check your balance, the app queries the database to fetch your data.

---

### 🔗 What is an **API** (Application Programming Interface)?

An **API** is a set of **rules and endpoints** that allows different software systems to communicate with each other.

#### 📌 Key Concepts:
- APIs expose certain functionality or data of an application to **other programs or clients**.
- Often used in **web development** to interact with databases or backends.
- Uses **HTTP** methods:
  - `GET` – Fetch data  
  - `POST` – Create new data  
  - `PUT` – Update data  
  - `DELETE` – Remove data

#### 💡 Real-World Example:
In a weather app:
- The app doesn't store weather data itself.
- Instead, it **calls a weather API**, which returns real-time weather from a database.

#### 📦 API + Database Example:
1. A user submits a form in a web app.
2. The app sends a `POST` request to the API.
3. The API takes the request and **saves the data into a database**.

---

### 🧠 Summary Comparison:

| Feature         | Database                         | API                                           |
|----------------|----------------------------------|-----------------------------------------------|
| Purpose         | Store & organize data            | Provide access to functionality or data       |
| Accessed by     | Applications (internally)        | External or internal apps via network         |
| Format          | Tables (SQL) or documents (NoSQL)| JSON/XML via HTTP                             |
| Tools/Tech      | MySQL, Oracle, MongoDB           | REST, SOAP, Postman, Swagger                   |
| Example         | User table in a shopping app     | Login API that checks credentials from DB     |

---

---

## ✅ Java & TestNG Guide for API and Database Testing

### 🔹 1. API Testing in Java with TestNG

#### ✅ What is API Testing?
You're testing the **request/response** behavior of an API. You check:
- Status codes (`200 OK`, `404 Not Found`, etc.)
- Response body (JSON/XML)
- Headers, response time, and more

#### 📦 Common Tools Used:
- **RestAssured** (Java library for API testing)
- **TestNG** (test framework)
- **Jackson/Gson** (for JSON parsing)

---

### 🧪 Example: GET API Test with RestAssured + TestNG

```java
import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.Test;

public class ApiTest {

    @Test
    public void getUserDetails() {
        Response response = RestAssured
            .given()
            .baseUri("https://jsonplaceholder.typicode.com")
            .when()
            .get("/users/1");

        Assert.assertEquals(response.statusCode(), 200);
        Assert.assertTrue(response.asString().contains("Leanne Graham"));
    }
}
```

#### 🧠 What’s Happening:
- We send a GET request to `/users/1`
- Validate status code = 200
- Check if the response contains expected content

---

### 🔹 2. Database Testing in Java with TestNG

#### ✅ What is DB Testing?
You’re validating **data correctness**, **integrity**, and **updates** directly in the database.

#### 📦 Common Tools:
- **JDBC** (Java Database Connectivity)
- **MySQL/PostgreSQL drivers**
- **TestNG**

---

### 🧪 Example: Connect to DB and Validate Data

```java
import java.sql.*;
import org.testng.Assert;
import org.testng.annotations.Test;

public class DatabaseTest {

    @Test
    public void validateUserFromDB() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/mydb";
        String user = "root";
        String password = "password";

        Connection con = DriverManager.getConnection(url, user, password);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT name FROM users WHERE id = 1");

        String dbName = "";
        if (rs.next()) {
            dbName = rs.getString("name");
        }

        Assert.assertEquals(dbName, "John Doe");

        con.close();
    }
}
```

#### 🧠 What’s Happening:
- Connect to a local MySQL DB
- Query user name where `id = 1`
- Assert it matches expected value `"John Doe"`

---

### 🔄 Combine API & DB for End-to-End Testing

**Scenario**: Submit data via API → Validate it in DB

```java
@Test
public void createUserAndVerifyInDB() throws SQLException {
    // 1. Create user via POST API
    Response res = RestAssured
        .given()
        .header("Content-Type", "application/json")
        .body("{\"name\": \"Alice\", \"email\": \"alice@example.com\"}")
        .post("http://localhost:8080/api/users");

    Assert.assertEquals(res.statusCode(), 201);

    // 2. Verify in DB
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "password");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT email FROM users WHERE name = 'Alice'");

    String email = "";
    if (rs.next()) {
        email = rs.getString("email");
    }

    Assert.assertEquals(email, "alice@example.com");

    con.close();
}
```

---

## 🧠 Summary

| Component  | Purpose                     | How to Test in Java         | Tools Used              |
|------------|-----------------------------|-----------------------------|--------------------------|
| **API**    | Communicate between systems | Send requests, validate response | RestAssured, TestNG     |
| **Database**| Store app data              | Connect via JDBC, query data     | JDBC, TestNG, SQL DB     |
| **Both**   | End-to-End Validation        | API to create, DB to verify      | RestAssured + JDBC combo |

---


# Extra 
Perfect! Here's a **complete project setup** for testing both **APIs** and **Databases** in **Java with TestNG**, using **Maven**, **RestAssured**, and **JDBC**.

---

## 🧱 Java + Maven + TestNG Project Setup for API & DB Testing

---

### ✅ 1. Project Structure

```
test-automation/
├── pom.xml
└── src/
    └── test/
        ├── java/
        │   ├── api/
        │   │   └── ApiTest.java
        │   └── db/
        │       └── DatabaseTest.java
        └── resources/
            └── config.properties  (optional for DB/API config)
```

---

### ✅ 2. `pom.xml` Dependencies

Make sure you have Maven installed. Then, in your `pom.xml`:

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0" ...>
  <modelVersion>4.0.0</modelVersion>

  <groupId>com.example</groupId>
  <artifactId>test-automation</artifactId>
  <version>1.0-SNAPSHOT</version>

  <dependencies>
    <!-- TestNG -->
    <dependency>
      <groupId>org.testng</groupId>
      <artifactId>testng</artifactId>
      <version>7.9.0</version>
      <scope>test</scope>
    </dependency>

    <!-- RestAssured for API Testing -->
    <dependency>
      <groupId>io.rest-assured</groupId>
      <artifactId>rest-assured</artifactId>
      <version>5.4.0</version>
      <scope>test</scope>
    </dependency>

    <!-- JSON support -->
    <dependency>
      <groupId>com.fasterxml.jackson.core</groupId>
      <artifactId>jackson-databind</artifactId>
      <version>2.17.0</version>
    </dependency>

    <!-- MySQL JDBC Driver -->
    <dependency>
      <groupId>mysql</groupId>
      <artifactId>mysql-connector-java</artifactId>
      <version>8.0.33</version>
    </dependency>
  </dependencies>

  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-surefire-plugin</artifactId>
        <version>3.1.2</version>
        <configuration>
          <includes>
            <include>**/*Test.java</include>
          </includes>
        </configuration>
      </plugin>
    </plugins>
  </build>
</project>
```

---

### ✅ 3. Sample API Test: `ApiTest.java`

```java
package api;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.annotations.Test;
import static org.testng.Assert.*;

public class ApiTest {

    @Test
    public void testGetUser() {
        Response response = RestAssured
            .given()
            .baseUri("https://jsonplaceholder.typicode.com")
            .when()
            .get("/users/1");

        assertEquals(response.getStatusCode(), 200);
        assertTrue(response.asString().contains("Leanne Graham"));
    }
}
```

---

### ✅ 4. Sample DB Test: `DatabaseTest.java`

```java
package db;

import org.testng.annotations.Test;
import java.sql.*;
import static org.testng.Assert.*;

public class DatabaseTest {

    @Test
    public void checkUserExists() throws Exception {
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/mydb", "root", "password");

        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT name FROM users WHERE id=1");

        String name = "";
        if (rs.next()) {
            name = rs.getString("name");
        }

        assertEquals(name, "John Doe");

        con.close();
    }
}
```

---

### ✅ 5. Run Tests

In terminal, from project root:

```bash
mvn clean test
```

---

### 🧠 Optional: Use `config.properties`

You can externalize your DB or API settings into a `config.properties` file in `resources/`:

```properties
db.url=jdbc:mysql://localhost:3306/mydb
db.user=root
db.pass=password
api.baseUrl=https://jsonplaceholder.typicode.com
```

Then read it in your tests using `Properties` class in Java.

---

## ✅ Summary

| **Component** | **Tool**           | **Purpose**                        |
|---------------|--------------------|------------------------------------|
| API Testing   | RestAssured        | Validate endpoints (GET/POST etc.) |
| DB Testing    | JDBC + MySQL       | Validate backend DB values         |
| Test Framework| TestNG             | Run, manage test flow              |
| Build Tool    | Maven              | Manage dependencies and run tests  |

---

