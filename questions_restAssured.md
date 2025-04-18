# RestAssured API Testing Manual for Rekindle Book Store

## Table of Contents
1. [Authentication](#authentication)
2. [CI/CD Pipeline Overview](#cicd-pipeline-overview)
3. [Docker](#docker)
4. [Folder Structure](#folder-structure)
5. [Hamcrest](#hamcrest)
6. [HTTP Methods](#http-methods)
7. [HTTP Status Codes](#http-status-codes)
8. [Installation Checklist](#installation-checklist)
9. [JSON](#json)
10. [Postman](#postman)
11. [Project Setup](#project-setup)
12. [RequestSpecification & ResponseSpecification](#requestspecification--responsespecification)
13. [REST & API Testing Concepts](#rest--api-testing-concepts)
14. [RestAssured Overview](#restassured-overview)
15. [Running Smoke Tests](#running-smoke-tests)
16. [Swagger](#swagger)
17. [Test Writing](#test-writing)
18. [Token Handling](#token-handling)
19. [Troubleshooting Guide](#troubleshooting-guide)
20. [Verification Checklist](#verification-checklist)
21. [What is Rekindle](#what-is-rekindle)
22. [Question & Answer](#question--answer)
23. [True/False Practice](#truefalse-practice)
24. [Multiple Choice Test](#multiple-choice-test)

---

## What is Rekindle

Rekindle is an online book store that allows users to browse, purchase, and manage books via a modern RESTful API. It is used as the target system for learning and applying automated testing concepts using REST Assured.

---

## Question & Answer

| # | Question | Answer |
|---|----------|--------|
| 1 | What is REST Assured? | REST Assured is a Java library for testing REST APIs using a domain-specific language. |
| 2 | How do you send a GET request in REST Assured? | Use `.when().get("/endpoint")` following `.given()` setup. |
| 3 | What is a RequestSpecification? | An interface in REST Assured used to define request headers, parameters, and body. |
| 4 | What is a ResponseSpecification? | An interface used to define expected response status, headers, and body content. |
| 5 | What is baseURI used for? | Sets the root URL for all requests to reduce repetition. |
| 6 | How do you authenticate with a token in REST Assured? | Use `.header("Authorization", "Bearer your_token")`. |
| 7 | What does the `then()` method do? | It defines validations/assertions in REST Assured. |
| 8 | What is the purpose of Hamcrest in testing? | Provides matchers for creating readable assertions. |
| 9 | What status code means resource not found? | 404 Not Found. |
| 10 | What status code confirms success? | 200 OK. |
| 11 | Which method is used to send data to the server? | POST. |
| 12 | What is JSON used for? | Data format for sending and receiving API data. |
| 13 | What does PUT method do? | Updates a resource fully. |
| 14 | What is the purpose of Swagger? | Provides interactive API documentation and testing interface. |
| 15 | What is Docker used for? | Running isolated environments for testing. |
| 16 | What tool can you use to automate testing pipelines? | Jenkins or any CI/CD platform. |
| 17 | How do you define headers in a request? | `.header("key", "value")` inside `.given()` block. |
| 18 | What is a 500 status code? | Internal Server Error. |
| 19 | What is the PATCH method used for? | Partially updating a resource. |
| 20 | Can REST Assured test both JSON and XML? | Yes, it supports both formats. |
| 21 | What library is needed to use REST Assured with Maven? | `io.rest-assured:rest-assured`. |
| 22 | Can you validate response time in REST Assured? | Yes, using `.time()` or custom matchers. |
| 23 | Is REST Assured only for Java? | Primarily Java, but can integrate with Kotlin, Groovy, etc. |
| 24 | What is an API? | Application Programming Interface, enables apps to communicate. |
| 25 | Can you test negative scenarios in REST Assured? | Yes, using incorrect inputs and asserting expected errors. |
| 26 | How is logging enabled in REST Assured? | Using `.log().all()` inside request or response. |
| 27 | What is the HEAD method used for? | Retrieves headers without body. |
| 28 | What tool helps define reusable specifications? | RequestSpecBuilder / ResponseSpecBuilder. |
| 29 | What is the OPTIONS method used for? | To describe communication options for the target resource. |
| 30 | Why use method chaining in REST Assured? | Improves readability and conciseness. |

---

## True/False Practice

<details><summary>1. REST Assured supports only the GET and POST methods. ✅/❌</summary>
❌ False. REST Assured supports all HTTP methods like GET, POST, PUT, DELETE, PATCH, OPTIONS, and HEAD.
</details>

<details><summary>2. You can chain methods in REST Assured for cleaner syntax. ✅/❌</summary>
✅ True. Method chaining is a key feature in REST Assured for readable, fluid code.
</details>

<details><summary>3. RequestSpecification is used for checking response codes. ✅/❌</summary>
❌ False. RequestSpecification is used to define requests, while ResponseSpecification is for expected responses.
</details>

<details><summary>4. JSON is not compatible with REST Assured. ✅/❌</summary>
❌ False. JSON is fully supported and commonly used.
</details>

<details><summary>5. A 200 status code means the request was successful. ✅/❌</summary>
✅ True.
</details>

<details><summary>6. Swagger is used only in development, not in testing. ✅/❌</summary>
❌ False. Swagger is used for testing too.
</details>

<details><summary>7. Hamcrest provides validation matchers. ✅/❌</summary>
✅ True.
</details>

<details><summary>8. The DELETE method is used to create new resources. ✅/❌</summary>
❌ False. DELETE removes resources.
</details>

<details><summary>9. Postman and REST Assured serve the same purpose. ✅/❌</summary>
❌ False. Postman is for manual testing; REST Assured is for automated testing.
</details>

<details><summary>10. The `given()` method initializes a request. ✅/❌</summary>
✅ True.
</details>

<details><summary>11. Docker is unnecessary for testing environments. ✅/❌</summary>
❌ False. Docker helps create isolated environments.
</details>

<details><summary>12. PATCH updates a resource completely. ✅/❌</summary>
❌ False. PATCH is for partial updates; PUT is for full updates.
</details>

<details><summary>13. CI/CD helps manual testing only. ✅/❌</summary>
❌ False. CI/CD automates builds and testing.
</details>

<details><summary>14. 500 means the request was successful. ✅/❌</summary>
❌ False. 500 means internal server error.
</details>

<details><summary>15. You can log request/response in REST Assured. ✅/❌</summary>
✅ True.
</details>

---

## Multiple Choice Test

<details><summary>1. Which of these is a valid way to send a GET request using REST Assured?</summary>
a) request.get("/data")  
b) given().when().get("/data")  
c) get("/data")  
✅ **Correct: b**
</details>

<details><summary>2. What interface defines expected status codes and headers in REST Assured?</summary>
a) RequestSpecBuilder  
b) HeaderMatcher  
c) ResponseSpecification  
✅ **Correct: c**
</details>

<details><summary>3. What does the `then()` method do in a REST Assured test?</summary>
a) Sets the endpoint path  
b) Defines validations/assertions  
c) Sends the request  
✅ **Correct: b**
</details>

<details><summary>4. What is the use of the `header()` method?</summary>
a) Define response expectations  
b) Add request headers  
c) Enable logging  
✅ **Correct: b**
</details>

<details><summary>5. What status code is returned for unauthorized access?</summary>
a) 200  
b) 401  
c) 404  
✅ **Correct: b**
</details>

<details><summary>6. What does 404 status indicate?</summary>
a) Resource found  
b) Request timeout  
c) Resource not found  
✅ **Correct: c**
</details>

<details><summary>7. What is used to partially update a resource?</summary>
a) PUT  
b) PATCH  
c) DELETE  
✅ **Correct: b**
</details>

---

🔗 **Quick Links Index**

- [Authentication](#authentication)
- [CI/CD](#cicd-pipeline-overview)
- [Docker](#docker)
- [Hamcrest](#hamcrest)
- [HTTP Methods](#http-methods)
- [HTTP Status Codes](#http-status-codes)
- [JSON](#json)
- [Postman](#postman)
- [RequestSpecification](#requestspecification--responsespecification)
- [REST](#rest--api-testing-concepts)
- [RestAssured](#restassured-overview)
- [Swagger](#swagger)
- [Token](#token-handling)
- [Rekindle](#what-is-rekindle)
