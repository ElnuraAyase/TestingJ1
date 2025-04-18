# RestAssured API Testing Manual for Rekindle Book Store

## Table of Contents
1. [Preinstallation Checklist](#1-preinstallation-checklist)
2. [What is API Testing](#2-what-is-api-testing)
3. [Extended Concepts and Visual Explanation](#3-extended-concepts-and-visual-explanation)
4. [RestAssured, Docker & Postman Explained](#4-restassured-docker--postman-explained)
5. [Project Setup](#5-project-setup)
6. [Folder Structure](#6-folder-structure)
7. [Writing Your First Test](#7-writing-your-first-test)
8. [Running Smoke Tests](#8-running-smoke-tests)
9. [Postman for Manual Testing](#9-postman-for-manual-testing)
10. [Verification Checklist](#10-verification-checklist)
11. [Troubleshooting Guide](#11-troubleshooting-guide)
12. [Advanced Topics: Tokens, Swagger, Visual Map](#12-advanced-topics-tokens-swagger-visual-map)
13. [REST Principles & RestAssured Evaluations](#13-rest-principles--restassured-evaluations)

[⬆️ Back to Top](#restassured-api-testing-manual-for-rekindle-book-store)

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

[⬆️ Back to Top](#table-of-contents)

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

[⬆️ Back to Top](#table-of-contents)

---

## 3. Extended Concepts and Visual Explanation

<details>
<summary>🌐 What is JSON?</summary>

JSON (JavaScript Object Notation) is a lightweight format used to transfer data between the client and server. It's like sending organized text. For example:
```json
{
  "id": 1,
  "title": "The Hobbit",
  "price": 12.99
}
```
</details>

<details>
<summary>🔥 What is a Smoke Test?</summary>

A smoke test is a **quick check** to make sure the main features or endpoints are working. It’s like turning on a machine to see if it powers up, before deeper testing. If a smoke test fails, we don’t bother with further tests.
</details>

<details>
<summary>📦 What is a Dependency?</summary>

In software, a dependency is a library your project **needs** to work. With Maven, you list dependencies in `pom.xml`. Example:
```xml
<dependency>
  <groupId>io.rest-assured</groupId>
  <artifactId>rest-assured</artifactId>
  <version>5.3.0</version>
</dependency>
```
</details>

<details>
<summary>🔄 Why Docker + Rekindle + RestAssured?</summary>

Imagine Rekindle is a digital bookstore with microservices for Orders, Books, Inventory, etc. Running all this manually would be complex.

1. **Docker** spins up PostgreSQL, Kafka, and all Rekindle services like mini-servers.
2. **Postman** helps test those APIs manually first, just like clicking buttons on a website.
3. **RestAssured** takes those same API calls and automates them. Instead of manual testing, you write Java tests.

Together:
- Docker = Runs the system
- Postman = Exploratory testing
- RestAssured + TestNG = Automated API testing
</details>

<details>
<summary>🤔 Why Use Postman If We Have RestAssured?</summary>

You might wonder, "Why use Postman at all?" Here’s the answer:
- Postman helps **test and explore** APIs when you're not ready to automate yet.
- It’s great for manual testing, debugging, and learning how endpoints behave.
- Once you're confident the API works manually, you **automate** the test using RestAssured.

Think of Postman as a **notepad and magnifying glass**, and RestAssured as a **robot tester** that repeats actions for you.
</details>

[⬆️ Back to Top](#table-of-contents)

---

## 5–12. Sections Available Above

Refer to sections 5 to 12 using the in-document navigation links above or the Table of Contents for:
- [5. Project Setup](#5-project-setup)
- [6. Folder Structure](#6-folder-structure)
- [7. Writing Your First Test](#7-writing-your-first-test)
- [8. Running Smoke Tests](#8-running-smoke-tests)
- [9. Postman for Manual Testing](#9-postman-for-manual-testing)
- [10. Verification Checklist](#10-verification-checklist)
- [11. Troubleshooting Guide](#11-troubleshooting-guide)
- [12. Advanced Topics: Tokens, Swagger, Visual Map](#12-advanced-topics-tokens-swagger-visual-map)

[⬆️ Back to Top](#table-of-contents)

---

## 13. REST Principles & RestAssured Evaluations

### 🧱 What is REST?

**REST (Representational State Transfer)** is an architectural style for designing networked applications. APIs that follow REST principles are called RESTful APIs.

**Key principles:**
- Stateless
- Uniform Interface
- Resource-Based
- Client-Server Separation
- Cacheable

### 🧪 RestAssured Testing Essentials

**Common Test Scenarios:**
- GET: Retrieve resource
- POST: Create resource
- PUT/PATCH: Update resource
- DELETE: Remove resource

**Validations Example:**
```java
.statusCode(200)
.body("name", equalTo("Harry Potter"))
.header("Content-Type", containsString("application/json"))
```

**Authentication:**
```java
given()
  .header("Authorization", "Bearer <your_token>")
.when()
  .get("/orders")
.then()
  .statusCode(200);
```

### 🧠 Common Interview & Evaluation Questions

**REST Concepts:**
1. ❓ What’s the difference between PUT and PATCH?
   - ✅ PUT replaces an entire resource. PATCH updates only part.
2. ❓ What is idempotency?
   - ✅ An operation that can be called many times without different results (e.g. PUT is idempotent).
3. ❓ Why is statelessness important?
   - ✅ Makes the system more scalable and predictable. Each request is independent.

**RestAssured Specific:**
1. ❓ How to pass headers and query parameters?
```java
given().header("key", "value")
       .queryParam("id", 123)
```
2. ❓ How to check JSON array size?
```java
.body("items.size()", equalTo(5))
```
3. ❓ How to chain token-based requests?
```java
String token = given()
  .contentType("application/json")
  .body(loginPayload)
.when()
  .post("/login")
.then()
  .extract().path("token");

given().header("Authorization", "Bearer " + token)
.when().get("/orders")
.then().statusCode(200);
```
4. ❓ How to log request and response?
```java
given().log().all()
.when().get("/books")
.then().log().all();
```

[⬆️ Back to Top](#table-of-contents)

---

End of Manual.

