# RestAssured API Testing Manual for Rekindle Book Store

## Table of Contents
1. Preinstallation Checklist
2. What is API Testing
3. RestAssured, Docker & Postman Explained
4. Project Setup
5. Folder Structure
6. Writing Your First Test
7. Running Smoke Tests
8. Postman for Manual Testing
9. Verification Checklist
10. Troubleshooting Guide

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

- ✅ Response status codes
- ✅ JSON/XML structure and values
- ✅ Auth & headers
- ✅ Error messages
- ✅ Database impact

---

## 3. RestAssured, Docker & Postman Explained

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
- All Rekindle microservices

All can be started using `docker-compose`. This gives a reliable test environment without manual setup.

### 📬 What is Postman?
Postman is a GUI for making HTTP calls to APIs. Use it to:
- Explore and verify API endpoints
- Check headers, payloads
- Save and share requests
- Generate documentation or sample code

### 🔗 How They Work Together with Rekindle

1. **Rekindle backend** starts with Docker (`init_rekindle_app.yml`)
2. **Postman** is used to explore APIs like `/orders`, `/books`, `/auth`
3. **RestAssured** automates those requests into test cases
4. **TestNG** executes those cases — for smoke testing, regression, etc.

---

## 4. Project Setup

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
     │    └── com.rekindle.api
     │          ├── base
     │          ├── tests
     │          └── utils
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

## 5. Folder Structure

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

## 6. Writing Your First Test

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

## 7. Running Smoke Tests

```bash
# Run from IntelliJ or use Maven
mvn clean test
```

Make sure Rekindle services are running via Docker:
```bash
docker-compose -f init_rekindle_app.yml up -d
```

---

## 8. Postman for Manual Testing

1. Open Postman
2. Create a collection "Rekindle APIs"
3. Add requests like:
   - GET `http://localhost:8181/orders`
   - POST `http://localhost:8181/orders` with body
4. Save and test responses
5. Export collection for reference or CI

---

## 9. Verification Checklist

- [ ] Docker containers are running (check `docker ps`)
- [ ] Rekindle app is reachable at `localhost:8181`
- [ ] `mvn clean test` runs without error
- [ ] Smoke test passes and status is `UP`
- [ ] Postman returns expected responses

---

## 10. Troubleshooting Guide

| Problem                      | Solution                                             |
|-----------------------------|------------------------------------------------------|
| Test fails with 500 error   | Backend not running or endpoint incorrect            |
| Connection refused          | Docker containers not started or wrong port          |
| Status code not 200         | Verify payload, headers, or auth                      |
| Cannot import RestAssured   | Check Maven dependency, reimport project             |
| `NullPointerException`      | Base URI missing or test setup skipped               |

---

End of Manual.

