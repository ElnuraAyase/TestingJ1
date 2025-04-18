# RestAssured API Testing Manual for Rekindle Book Store

## Table of Contents
1. Preinstallation Checklist
2. What is API Testing
3. Extended Concepts and Visual Explanation
4. RestAssured, Docker & Postman Explained
5. Project Setup
6. Folder Structure
7. Writing Your First Test
8. Running Smoke Tests
9. Postman for Manual Testing
10. Verification Checklist
11. Troubleshooting Guide

---

## 1. Preinstallation Checklist

✅ **Required Tools**:

- IntelliJ IDEA (Community or Ultimate)
- Java 21 (Amazon Corretto or Oracle)
- Maven
- Git
- Docker Desktop
- Postman

❗ **Verify Tools**:
```
java -version
mvn -version
docker --version
git --version
```

---

## 2. What is API Testing

API (Application Programming Interface) testing validates backend functionality directly — without a user interface. It's faster, more stable, and ideal for automating checks like:

✅ **Response Status Codes** — These are numbers returned by the server that show what happened:
- 200 = OK
- 201 = Created
- 400 = Bad Request
- 401 = Unauthorized
- 404 = Not Found
- 500 = Server Error

✅ **JSON/XML Structure and Values** — Verifying that the response format (usually JSON or XML) has the correct structure and expected values.

✅ **Auth & Headers** — Checking whether APIs require authentication tokens, and if headers like `Content-Type`, `Authorization`, etc., are properly handled.

✅ **Error Messages** — Ensuring that when something fails, the system provides helpful error responses.

✅ **Database Impact** — Making sure the API request (like POST or DELETE) actually updates the database as expected.

---

## 3. Extended Concepts and Visual Explanation

### 🌐 What is JSON?
JSON (JavaScript Object Notation) is a lightweight format used to transfer data between the client and server. It's like sending organized text. For example:
```json
{
  "id": 1,
  "title": "The Hobbit",
  "price": 12.99
}
```

### 🔥 What is a Smoke Test?
A smoke test is a **quick check** to make sure the main features or endpoints are working. It’s like turning on a machine to see if it powers up, before deeper testing. If a smoke test fails, we don’t bother with further tests.

### 📦 What is a Dependency?
In software, a dependency is a library your project **needs** to work. With Maven, you list dependencies in `pom.xml`. Example:
```xml
<dependency>
  <groupId>io.rest-assured</groupId>
  <artifactId>rest-assured</artifactId>
  <version>5.3.0</version>
</dependency>
```

### 🔄 Why Docker + Rekindle + RestAssured?
Imagine Rekindle is a digital bookstore with microservices for Orders, Books, Inventory, etc. Running all this manually would be complex.

1. **Docker** spins up PostgreSQL, Kafka, and all Rekindle services like mini-servers.
2. **Postman** helps test those APIs manually first, just like clicking buttons on a website.
3. **RestAssured** takes those same API calls and automates them. Instead of manual testing, you write Java tests.

Together:
- Docker = Runs the system
- Postman = Exploratory testing
- RestAssured + TestNG = Automated API testing

### 🤔 Why Use Postman If We Have RestAssured?
You might wonder, "Why use Postman at all?" Here’s the answer:
- Postman helps **test and explore** APIs when you're not ready to automate yet.
- It’s great for manual testing, debugging, and learning how endpoints behave.
- Once you're confident the API works manually, you **automate** the test using RestAssured.

Think of Postman as a **notepad and magnifying glass**, and RestAssured as a **robot tester** that repeats actions for you.

---

## 4. RestAssured, Docker & Postman Explained

### 🔧 What is RestAssured?
A Java library used to test REST APIs. It integrates smoothly with TestNG or JUnit and makes HTTP requests super easy to write:
```java
given().baseUri("http://localhost:8080")
       .when().get("/books")
       .then().statusCode(200);
```
You can validate:
- Status codes
- Response bodies
- Headers, cookies
- JSON schema, timeouts

### 🐳 What is Docker?
Docker helps run your entire backend stack in **isolated containers**. For Rekindle, this means:
- PostgreSQL
- Kafka
- Rekindle microservices

All started using `docker-compose` for a reliable and repeatable test environment.

### 📨 What is Postman?
Postman is a GUI for making HTTP calls to APIs. Use it to:
- Explore and verify API endpoints
- Check headers, payloads
- Save and share requests
- Generate sample code

### 🔗 How They Work Together
1. Docker starts Rekindle backend
2. Postman is used to manually test APIs like `/orders`
3. RestAssured automates those tests
4. TestNG runs them as a smoke or regression suite

---

## 5. Project Setup

### Step 1: Create Folder
```
mkdir C:\Projects\rekindle-api-tests
cd C:\Projects\rekindle-api-tests
```

### Step 2: Create Maven Project Structure
```
src
 └── test
     ├── java
     │   └── com.rekindle.api
     │         ├── base
     │         ├── tests
     │         └── utils
     └── resources
```

### Step 3: Add `pom.xml`
```xml
<dependencies>
  <dependency>
    <groupId>io.rest-assured</groupId>
    <artifactId>rest-assured</artifactId>
    <version>5.3.0</version>
    <scope>test</scope>
  </dependency>
  <dependency>
    <groupId>org.testng</groupId>
    <artifactId>testng</artifactId>
    <version>7.9.0</version>
    <scope>test</scope>
  </dependency>
</dependencies>
```

---

## 6. Folder Structure

```
rekindle-api-tests/
├── base/
│   └── BaseTest.java
├── tests/
│   ├── SmokeTests.java
│   └── OrderServiceTest.java
├── utils/
│   └── RestConfig.java
└── resources/
```

---

## 7. Writing Your First Test

### BaseTest.java
```java
package com.rekindle.api.base;

import io.restassured.RestAssured;
import org.testng.annotations.BeforeClass;

public class BaseTest {
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = "http://localhost:8181";
    }
}
```

### SmokeTests.java
```java
package com.rekindle.api.tests;

import com.rekindle.api.base.BaseTest;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class SmokeTests extends BaseTest {

    @Test
    public void testOrderServiceHealth() {
        given()
        .when()
            .get("/actuator/health")
        .then()
            .statusCode(200)
            .body("status", equalTo("UP"));
    }
}
```

---

## 8. Running Smoke Tests

```bash
# Run from IntelliJ or use Maven
mvn clean test
```

Make sure Rekindle services are running via Docker:
```bash
docker-compose -f init_rekindle_app.yml up -d
```

---

## 9. Postman for Manual Testing

1. Open Postman
2. Create a collection "Rekindle APIs"
3. Add requests like:
   - GET `http://localhost:8181/orders`
   - POST `http://localhost:8181/orders` with body
4. Save and test responses
5. Export collection for reference or CI

---

## 10. Verification Checklist

- [ ] Docker containers are running (check `docker ps`)
- [ ] Rekindle app is reachable at `localhost:8181`
- [ ] `mvn clean test` runs without error
- [ ] Smoke test passes and status is `UP`
- [ ] Postman returns expected responses

---

## 11. Troubleshooting Guide

| Problem                      | Solution                                             |
|-----------------------------|------------------------------------------------------|
| Test fails with 500 error   | Backend not running or endpoint incorrect            |
| Connection refused          | Docker containers not started or wrong port          |
| Status code not 200         | Verify payload, headers, or auth                      |
| Cannot import RestAssured   | Check Maven dependency, reimport project             |
| `NullPointerException`      | Base URI missing or test setup skipped               |

---

End of Manual.

