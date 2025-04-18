

---

# RestAssured API Testing Manual for Rekindle Book Store


## Question & Answer

| #  | Question                                    | Answer                                                                                                                                         |
|----|---------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| 1  | What is REST Assured?                       | REST Assured is a Java library for testing REST APIs using a domain-specific language.                                                           |
| 2  | How do you send a GET request in REST Assured? | Use `.when().get("/endpoint")` following `.given()` setup.                                                                                       |
| 3  | What is a RequestSpecification?             | An interface in REST Assured used to define request headers, parameters, and body.                                                               |
| 4  | What is a ResponseSpecification?            | An interface used to define expected response status, headers, and body content.                                                                |
| 5  | What is baseURI used for?                   | Sets the root URL for all requests to reduce repetition.                                                                                        |
| 6  | How do you authenticate with a token in REST Assured? | Use `.header("Authorization", "Bearer your_token")`.                                                                                             |
| 7  | What does the `then()` method do?           | It defines validations/assertions in REST Assured.                                                                                                |
| 8  | What is the purpose of Hamcrest in testing?  | Provides matchers for creating readable assertions.                                                                                             |
| 9  | What status code means resource not found?  | 404 Not Found.                                                                                                                                  |
| 10 | What status code confirms success?          | 200 OK.                                                                                                                                         |
| 11 | Which method is used to send data to the server? | POST.                                                                                                                                          |
| 12 | What is JSON used for?                      | Data format for sending and receiving API data.                                                                                                 |
| 13 | What does PUT method do?                    | Updates a resource fully.                                                                                                                       |
| 14 | What is the purpose of Swagger?             | Provides interactive API documentation and testing interface.                                                                                  |
| 15 | What is Docker used for?                    | Running isolated environments for testing.                                                                                                      |
| 16 | What tool can you use to automate testing pipelines? | Jenkins or any CI/CD platform.                                                                                                                   |
| 17 | How do you define headers in a request?     | `.header("key", "value")` inside `.given()` block.                                                                                                |
| 18 | What is a 500 status code?                  | Internal Server Error.                                                                                                                           |
| 19 | What is the PATCH method used for?          | Partially updating a resource.                                                                                                                  |
| 20 | Can REST Assured test both JSON and XML?    | Yes, it supports both formats.                                                                                                                  |
| 21 | What library is needed to use REST Assured with Maven? | `io.rest-assured:rest-assured`.                                                                                                                  |
| 22 | Can you validate response time in REST Assured? | Yes, using `.time()` or custom matchers.                                                                                                        |
| 23 | Is REST Assured only for Java?              | Primarily Java, but can integrate with Kotlin, Groovy, etc.                                                                                     |
| 24 | What is an API?                             | Application Programming Interface, enables apps to communicate.                                                                                 |
| 25 | Can you test negative scenarios in REST Assured? | Yes, using incorrect inputs and asserting expected errors.                                                                                     |
| 26 | How is logging enabled in REST Assured?     | Using `.log().all()` inside request or response.                                                                                                 |
| 27 | What is the HEAD method used for?           | Retrieves headers without body.                                                                                                                  |
| 28 | What tool helps define reusable specifications? | RequestSpecBuilder / ResponseSpecBuilder.                                                                                                       |
| 29 | What is the OPTIONS method used for?        | To describe communication options for the target resource.                                                                                      |
| 30 | Why use method chaining in REST Assured?    | Improves readability and conciseness.                                                                                                            |
| 31 | What is Rekindle?                           | Rekindle is an online bookstore with a RESTful API used to practice testing scenarios.                                                           |

---

---

You're absolutely right to want it to be both user-friendly and optimized for markdown (`.md`) format. For enhanced visibility and better structure in a markdown document, I'll tweak the layout and format the collapsible sections properly for both **True/False** and **Multiple Choice Test** questions.

However, please note that **collapsibility** is not supported directly in standard markdown. This feature is typically only supported on platforms like GitHub (with `details`/`summary` tags) or some markdown-rendering engines that support HTML.

Here’s an optimized version for markdown where you can still see the questions with answers hidden by default (collapsing is supported on platforms like GitHub and Bitbucket).

### Optimized Markdown Format:

---

## True/False Practice

| #  | Question                                                              | Answer                                                                                             |
|----|-----------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| 1  | **True or False:** REST Assured can only be used with JSON data.      | <details><summary>Answer</summary> **False** – REST Assured supports both JSON and XML formats for testing. </details> |
| 2  | **True or False:** The `POST` method is used to retrieve data from a server. | <details><summary>Answer</summary> **False** – The `POST` method is used to send data to the server, not retrieve it. </details> |
| 3  | **True or False:** 200 status code means internal server error.      | <details><summary>Answer</summary> **False** – 200 status code means "OK," indicating a successful response from the server. </details> |
| 4  | **True or False:** You can use `PUT` to create a new resource.       | <details><summary>Answer</summary> **False** – `PUT` is typically used to update an existing resource, not to create one. </details> |
| 5  | **True or False:** `PATCH` is used to partially update a resource.   | <details><summary>Answer</summary> **True** – `PATCH` allows you to update a part of the resource, rather than the entire resource. </details> |
| 6  | **True or False:** In REST Assured, the `.when().get("/endpoint")` method is used to send a GET request. | <details><summary>Answer</summary> **True** – This is the correct syntax for sending a GET request. </details> |
| 7  | **True or False:** The `DELETE` method is used to create a resource on the server. | <details><summary>Answer</summary> **False** – The `DELETE` method is used to delete a resource on the server, not create one. </details> |
| 8  | **True or False:** Status code 404 indicates that the server has successfully processed the request. | <details><summary>Answer</summary> **False** – Status code 404 means "Not Found," indicating that the resource was not found on the server. </details> |
| 9  | **True or False:** The `.log().all()` method in REST Assured is used for logging the details of the request and response. | <details><summary>Answer</summary> **True** – `.log().all()` helps you log request and response details. </details> |
| 10 | **True or False:** You can test for response time using REST Assured. | <details><summary>Answer</summary> **True** – REST Assured provides `.time()` to check response times. </details> |
```

---

## Multiple Choice Test

| #  | Question                                                                                 | Answer                                                                                             |
|----|------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| 1  | **What is REST Assured used for?**                                                        | A) UI testing <br> B) API testing <br> C) Database testing <br> D) Performance testing            |
|    | <details><summary>Answer</summary> **B) API testing** </details>                           |
| 2  | **Which HTTP method is used to create a new resource on the server?**                     | A) GET <br> B) POST <br> C) PUT <br> D) DELETE                                                   |
|    | <details><summary>Answer</summary> **B) POST** </details>                                  |
| 3  | **What does the `PUT` method do in REST APIs?**                                           | A) Retrieves a resource <br> B) Deletes a resource <br> C) Updates a resource <br> D) Creates a resource |
|    | <details><summary>Answer</summary> **C) Updates a resource** </details>                     |
| 4  | **Which of the following status codes indicates success in a request?**                   | A) 400 <br> B) 404 <br> C) 200 <br> D) 500                                                     |
|    | <details><summary>Answer</summary> **C) 200** </details>                                  |
| 5  | **Which status code indicates "Resource Not Found"?**                                     | A) 200 <br> B) 201 <br> C) 404 <br> D) 500                                                     |
|    | <details><summary>Answer</summary> **C) 404** </details>                                  |
| 6  | **How do you define request headers in REST Assured?**                                    | A) `.header()` <br> B) `.body()` <br> C) `.pathParam()` <br> D) `.queryParam()`                  |
|    | <details><summary>Answer</summary> **A) `.header()`** </details>                           |
| 7  | **Which HTTP method is used for retrieving data from the server?**                        | A) GET <br> B) POST <br> C) PUT <br> D) DELETE                                                   |
|    | <details><summary>Answer</summary> **A) GET** </details>                                  |
| 8  | **Which of the following is used for testing APIs with OAuth2 authentication in REST Assured?** | A) `.auth().oauth2()` <br> B) `.header("Authorization", "Bearer token")` <br> C) `.body()` <br> D) `.cookie()` |
|    | <details><summary>Answer</summary> **B) `.header("Authorization", "Bearer token")`** </details>  |
| 9  | **What does `PATCH` method do in REST APIs?**                                              | A) Fully updates a resource <br> B) Partially updates a resource <br> C) Deletes a resource <br> D) Retrieves a resource |
|    | <details><summary>Answer</summary> **B) Partially updates a resource** </details>             |
| 10 | **How can you validate response time in REST Assured?**                                   | A) `.time()` <br> B) `.statusCode()` <br> C) `.header()` <br> D) `.cookie()`                     |
|    | <details><summary>Answer</summary> **A) `.time()`** </details>                            |
```

---

---

