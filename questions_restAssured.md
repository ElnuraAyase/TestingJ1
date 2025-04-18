

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

## True/False Practice

| #  | Question                                                              | Answer                                                                                             |
|----|-----------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| 1  | **True or False:** REST Assured can only be used with JSON data.      | **False** – REST Assured supports both JSON and XML formats for testing.                          |
| 2  | **True or False:** The `POST` method is used to retrieve data from a server. | **False** – The `POST` method is used to send data to the server, not retrieve it.               |
| 3  | **True or False:** 200 status code means internal server error.      | **False** – 200 status code means "OK," which indicates a successful response from the server.    |
| 4  | **True or False:** You can use `PUT` to create a new resource.       | **False** – `PUT` is typically used to update an existing resource, not to create one.            |
| 5  | **True or False:** `PATCH` is used to partially update a resource.   | **True** – `PATCH` allows you to update a part of the resource, rather than the entire resource.   |
| 6  | **True or False:** In REST Assured, the `.when().get("/endpoint")` method is used to send a GET request. | **True** – This is the correct syntax for sending a GET request.                                   |
| 7  | **True or False:** The `DELETE` method is used to create a resource on the server. | **False** – The `DELETE` method is used to delete a resource on the server, not create one.       |
| 8  | **True or False:** Status code 404 indicates that the server has successfully processed the request. | **False** – Status code 404 means "Not Found," indicating that the resource was not found on the server. |
| 9  | **True or False:** The `.log().all()` method in REST Assured is used for logging the details of the request and response. | **True** – `.log().all()` helps you log request and response details.                             |
| 10 | **True or False:** You can test for response time using REST Assured. | **True** – REST Assured provides `.time()` to check response times.                               |
| 11 | **True or False:** REST Assured can only test APIs written in Java.   | **False** – While it’s primarily for Java, REST Assured can be used with other JVM-based languages like Kotlin or Groovy. |
| 12 | **True or False:** REST Assured can handle OAuth2 authentication for testing. | **True** – REST Assured supports OAuth2 authentication using the `.auth()` method.               |
| 13 | **True or False:** A status code of 500 indicates the request was successfully processed by the server. | **False** – A 500 status code indicates an Internal Server Error.                                  |
| 14 | **True or False:** `GET` is the HTTP method used for updating resources. | **False** – `GET` is used for retrieving resources, not for updating them.                        |
| 15 | **True or False:** REST Assured can be integrated into a CI/CD pipeline for automated testing. | **True** – REST Assured can be integrated with tools like Jenkins to automate testing in CI/CD pipelines. |
| 16 | **True or False:** You cannot use REST Assured for XML response validation. | **False** – REST Assured supports both XML and JSON for response validation.                      |
| 17 | **True or False:** The `HEAD` method retrieves headers without body. | **True** – The `HEAD` method is used to get headers from the server without the response body.     |
| 18 | **True or False:** In REST Assured, you use `.given()` to define the expected response. | **False** – `.given()` is used to define the request, while `.then()` is used to define the expected response. |
| 19 | **True or False:** You can validate headers in the response using REST Assured. | **True** – REST Assured allows you to validate response headers using `.then().header()`.          |
| 20 | **True or False:** The `OPTIONS` method returns the allowed methods for a resource. | **True** – The `OPTIONS` method provides information about the communication options available for the resource. |
| 21 | **True or False:** You can use `POST` to send both data and files to the server. | **True** – `POST` can be used to send both data and files to the server.                          |
| 22 | **True or False:** The `PATCH` method is used for updating an entire resource. | **False** – `PATCH` is for partially updating a resource, while `PUT` is used for full updates.    |
| 23 | **True or False:** REST Assured can be used to test both public and private APIs. | **True** – REST Assured can test both public and private APIs, as long as the appropriate authentication is provided. |
| 24 | **True or False:** The `.header()` method in REST Assured is used to set request parameters. | **False** – The `.header()` method is used to set request headers, not parameters.                |
| 25 | **True or False:** REST Assured can be used to validate response bodies in both JSON and XML formats. | **True** – REST Assured supports validating response bodies in both JSON and XML formats.          |
| 26 | **True or False:** The `DELETE` method removes a resource from the server. | **True** – The `DELETE` method is used to delete a resource from the server.                      |
| 27 | **True or False:** REST Assured provides automatic handling of redirects. | **True** – REST Assured automatically follows HTTP redirects by default.                          |
| 28 | **True or False:** You can test REST APIs without writing any assertions in REST Assured. | **False** – You need to write assertions to validate the correctness of the API response in REST Assured. |
| 29 | **True or False:** The `HEAD` method retrieves headers and the body of a resource. | **False** – The `HEAD` method only retrieves headers, not the body.                              |
| 30 | **True or False:** The `DELETE` method is used to remove a resource from the server. | **True** – The `DELETE` method is used to delete a resource from the server.                      |

---

## Multiple Choice Test

| #  | Question                                                                                 | Answer                                                                                             |
|----|------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| 1  | **What is REST Assured used for?**                                                        | A) UI testing <br> B) API testing <br> C) Database testing <br> D) Performance testing            |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>B) API testing</strong>                                  |
| 2  | **Which HTTP method is used to create a new resource on the server?**                     | A) GET <br> B) POST <br> C) PUT <br> D) DELETE                                                   |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>B) POST</strong>                                         |
| 3  | **What does the `PUT` method do in REST APIs?**                                           | A) Retrieves a resource <br> B) Deletes a resource <br> C) Updates a resource <br> D) Creates a resource |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>C) Updates a resource</strong>                           |
| 4  | **Which of the following status codes indicates success in a request?**                   | A) 400 <br> B) 404 <br> C) 200 <br> D) 500                                                     |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>C) 200</strong>                                         |
| 5  | **Which status code indicates "Resource Not Found"?**                                     | A) 200 <br> B) 201 <br> C) 404 <br> D) 500                                                     |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>C) 404</strong>                                         |
| 6  | **How do you define request headers in REST Assured?**                                    | A) `.header()` <br> B) `.body()` <br> C) `.pathParam()` <br> D) `.queryParam()`                  |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>A) `.header()`</strong>                                 |
| 7  | **Which HTTP method is used for retrieving data from the server?**                        | A) GET <br> B) POST <br> C) PUT <br> D) DELETE                                                   |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>A) GET</strong>                                          |
| 8  | **Which of the following is used for testing APIs with OAuth2 authentication in REST Assured?** | A) `.auth().oauth2()` <br> B) `.header("Authorization", "Bearer token")` <br> C) `.body()` <br> D) `.cookie()` |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>B) `.header("Authorization", "Bearer token")`</strong>  |
| 9  | **What does `PATCH` method do in REST APIs?**                                              | A) Fully updates a resource <br> B) Partially updates a resource <br> C) Deletes a resource <br> D) Retrieves a resource |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>B) Partially updates a resource</strong>                 |
| 10 | **How can you validate response time in REST Assured?**                                   | A) `.time()` <br> B) `.statusCode()` <br> C) `.header()` <br> D) `.cookie()`                     |
|    | <details>                                                                                 | <summary>Correct Answer</summary> <strong>A) `.time()`</strong>                                   |

---
