
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
| 31 | What is Rekindle? | Rekindle is an online bookstore with a RESTful API used to practice testing scenarios. |

---

---

## ✅ True/False Practice

<details><summary>1. REST Assured can only be used with JSON data.</summary><span style="color:red;">False – REST Assured supports both JSON and XML formats.</span></details>  
<details><summary>2. The POST method is used to retrieve data from a server.</summary><span style="color:red;">False – POST sends data to the server.</span></details>  
<details><summary>3. Status code 200 means internal server error.</summary><span style="color:red;">False – 200 means success. 500 is server error.</span></details>  
<details><summary>4. PUT method creates a new resource.</summary><span style="color:red;">False – PUT updates a resource fully.</span></details>  
<details><summary>5. PATCH is used to partially update a resource.</summary><span style="color:green;">True</span></details>  
<details><summary>6. You use `.when().get()` to send a GET request in REST Assured.</summary><span style="color:green;">True</span></details>  
<details><summary>7. DELETE is used to create a resource.</summary><span style="color:red;">False – It deletes a resource.</span></details>  
<details><summary>8. Status 404 means the server processed the request successfully.</summary><span style="color:red;">False – 404 means "Not Found."</span></details>  
<details><summary>9. `.log().all()` logs request/response details.</summary><span style="color:green;">True</span></details>  
<details><summary>10. REST Assured can validate response time.</summary><span style="color:green;">True</span></details>  
<details><summary>11. The GET method is used to modify data.</summary><span style="color:red;">False</span></details>  
<details><summary>12. Status 201 means resource created successfully.</summary><span style="color:green;">True</span></details>  
<details><summary>13. HEAD request includes a body in the response.</summary><span style="color:red;">False – Only headers.</span></details>  
<details><summary>14. OPTIONS method is used for creating data.</summary><span style="color:red;">False – It retrieves allowed methods.</span></details>  
<details><summary>15. You can chain multiple methods in REST Assured.</summary><span style="color:green;">True</span></details>  
<details><summary>16. Hamcrest is required for REST Assured to work.</summary><span style="color:red;">False – It’s used for better assertions, not required.</span></details>  
<details><summary>17. REST Assured works with JavaScript.</summary><span style="color:red;">False – It’s primarily for Java.</span></details>  
<details><summary>18. A 401 status code means unauthorized.</summary><span style="color:green;">True</span></details>  
<details><summary>19. ResponseSpecification defines request headers.</summary><span style="color:red;">False – It defines expected response properties.</span></details>  
<details><summary>20. REST Assured requires Maven.</summary><span style="color:red;">False – Maven is common but not required.</span></details>  
<details><summary>21. You can use RestAssured with Kotlin.</summary><span style="color:green;">True</span></details>  
<details><summary>22. Response time validation is done with `.time()`.</summary><span style="color:green;">True</span></details>  
<details><summary>23. Status 403 means forbidden.</summary><span style="color:green;">True</span></details>  
<details><summary>24. JSON is used to define UI layout.</summary><span style="color:red;">False – JSON is for data exchange.</span></details>  
<details><summary>25. `.body()` sets the request payload.</summary><span style="color:green;">True</span></details>  
<details><summary>26. `baseURI` must be set for every request.</summary><span style="color:red;">False – It can be set globally.</span></details>  
<details><summary>27. Swagger is used for API mocking.</summary><span style="color:red;">False – It documents and tests APIs.</span></details>  
<details><summary>28. `ResponseSpecBuilder` helps with reusable response validation.</summary><span style="color:green;">True</span></details>  
<details><summary>29. 500 errors are client errors.</summary><span style="color:red;">False – They’re server errors.</span></details>  
<details><summary>30. Rekindle is a REST API used for bookstore testing scenarios.</summary><span style="color:green;">True</span></details>  

---

## ✅ Multiple Choice Test

1. What is REST Assured used for?  
A) UI Testing  
B) API Testing  
C) Performance Testing  
D) Database Testing  
<details><summary><span style="color:green;">Answer</span></summary>B) API Testing</details>

2. Which method creates a new resource?  
A) GET  
B) POST  
C) DELETE  
D) PATCH  
<details><summary><span style="color:green;">Answer</span></summary>B) POST</details>

3. What does PUT do?  
A) Retrieve resource  
B) Fully update resource  
C) Delete resource  
D) Partially update resource  
<details><summary><span style="color:green;">Answer</span></summary>B) Fully update resource</details>

4. What status means “OK”?  
A) 201  
B) 404  
C) 200  
D) 500  
<details><summary><span style="color:green;">Answer</span></summary>C) 200</details>

5. Which status code is Not Found?  
A) 500  
B) 401  
C) 404  
D) 201  
<details><summary><span style="color:green;">Answer</span></summary>C) 404</details>

6. Define a header in REST Assured:  
A) `.queryParam()`  
B) `.body()`  
C) `.header()`  
D) `.when()`  
<details><summary><span style="color:green;">Answer</span></summary>C) `.header()`</details>

7. Which method retrieves data?  
A) POST  
B) GET  
C) PUT  
D) PATCH  
<details><summary><span style="color:green;">Answer</span></summary>B) GET</details>

8. How to authenticate using a token?  
A) `.queryParam("token", "xxx")`  
B) `.header("Authorization", "Bearer xxx")`  
C) `.setToken()`  
D) `.cookie()`  
<details><summary><span style="color:green;">Answer</span></summary>B) `.header("Authorization", "Bearer xxx")`</details>

9. What is PATCH used for?  
A) Creating resource  
B) Fully updating resource  
C) Partially updating resource  
D) Getting all resources  
<details><summary><span style="color:green;">Answer</span></summary>C) Partially updating resource</details>

10. How to check response time?  
A) `.statusCode()`  
B) `.log().all()`  
C) `.time()`  
D) `.jsonPath()`  
<details><summary><span style="color:green;">Answer</span></summary>C) `.time()`</details>

11. What tool helps define reusable request settings?  
A) SpecFormatter  
B) HeaderMaker  
C) RequestSpecBuilder  
D) Swagger  
<details><summary><span style="color:green;">Answer</span></summary>C) RequestSpecBuilder</details>

12. What is Swagger used for?  
A) Automate CI/CD  
B) Define UI design  
C) Document and test APIs  
D) Mock database responses  
<details><summary><span style="color:green;">Answer</span></summary>C) Document and test APIs</details>

13. What format does REST Assured support?  
A) JSON  
B) XML  
C) HTML  
D) A and B  
<details><summary><span style="color:green;">Answer</span></summary>D) A and B</details>

14. What is `.then()` used for?  
A) Send the request  
B) Initialize REST Assured  
C) Add assertions  
D) Parse JSON  
<details><summary><span style="color:green;">Answer</span></summary>C) Add assertions</details>

15. Which is a client error status code?  
A) 500  
B) 200  
C) 401  
D) 100  
<details><summary><span style="color:green;">Answer</span></summary>C) 401</details>

16. What library provides readable matchers?  
A) AssertJ  
B) JUnit  
C) Hamcrest  
D) Mockito  
<details><summary><span style="color:green;">Answer</span></summary>C) Hamcrest</details>

17. Which tool runs tests in pipelines?  
A) Docker  
B) Jenkins  
C) GitHub  
D) Jira  
<details><summary><span style="color:green;">Answer</span></summary>B) Jenkins</details>

18. What is `.log().all()` used for?  
A) Filtering logs  
B) Logging headers only  
C) Logging full request or response  
D) Ignoring logs  
<details><summary><span style="color:green;">Answer</span></summary>C) Logging full request or response</details>

19. What does the OPTIONS method return?  
A) JSON data  
B) Resource ID  
C) Allowed HTTP methods  
D) All users  
<details><summary><span style="color:green;">Answer</span></summary>C) Allowed HTTP methods</details>

20. Which Maven dependency is used for REST Assured?  
A) `rest-api-tester`  
B) `rest-client-java`  
C) `io.rest-assured:rest-assured`  
D) `restLib`  
<details><summary><span style="color:green;">Answer</span></summary>C) `io.rest-assured:rest-assured`</details>

---
