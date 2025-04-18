

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
