
---

# 📘 Testing Frameworks – MCQs & True/False Questions

---

## 🎯 **Multiple Choice Questions (MCQs)**

> *Each question has 3 choices, with 1 or 2 correct answers marked with ✅.*

| # | Question | A | B | C |
|---|----------|---|---|---|
| 1 | What does a testing framework provide? | ✅ Structure and automation for testing | Code refactoring tools | Runtime compilers |
| 2 | Which of the following is a unit testing framework? | Selenium | ✅ JUnit | ✅ PyTest |
| 3 | What is the purpose of `@BeforeMethod` in TestNG? | ✅ Run setup before each test | Run after each suite | Skip a test |
| 4 | Which is a UI testing tool? | ✅ Selenium | JUnit | TestNG |
| 5 | What happens if `@Test` is not used in TestNG? | ✅ The method won’t be treated as a test | Test runs as usual | It throws a compile error |
| 6 | Which of these are TestNG assertions? | ✅ `Assert.assertTrue()` | `System.out.println()` | ✅ `Assert.assertEquals()` |
| 7 | What does `@DataProvider` do in TestNG? | Ignore tests | ✅ Supplies data to tests | Stops test execution |
| 8 | What does serialization in Java allow? | ✅ Save object to file | Render HTML | Format strings |
| 9 | What is the base of the test pyramid? | ✅ Unit Tests | End-to-End Tests | Integration Tests |
| 10 | Which build tool uses XML? | ✅ Maven | Gradle | Jenkins |
| 11 | Which tool is used for behavior-driven development? | JUnit | ✅ Cucumber | Gradle |
| 12 | What does `Assert.assertEquals(a, b)` do? | Checks if `a > b` | ✅ Verifies equality | Logs a warning |
| 13 | What kind of testing does PyTest support? | ✅ Unit Testing | UI Testing | API Deployment |
| 14 | Which annotation runs once before all tests in a suite? | `@BeforeMethod` | ✅ `@BeforeSuite` | `@BeforeClass` |
| 15 | What is the purpose of assertions in a test? | Run setup code | ✅ Validate results | Define test names |
| 16 | Which tools are for build automation? | ✅ Gradle | ✅ Maven | Selenium |
| 17 | Which of these is a valid reason for using Git? | ✅ Version control | Running UI tests | Compiling code |
| 18 | What does `@AfterClass` do? | ✅ Runs after all test methods in class | Compiles the project | Runs test only once |
| 19 | What is an API? | ✅ A set of rules for communication | Java function | Web design language |
| 20 | What is the main advantage of the test pyramid model? | ✅ Efficient test distribution | All tests are manual | Ignore end-to-end tests |
| 21 | What annotation is used to pass XML parameters in TestNG? | `@Test` | `@DataProvider` | ✅ `@Parameters` |
| 22 | Which of these is NOT a TestNG annotation? | `@RunTest` | ✅ `@RunTest` | `@BeforeClass` |
| 23 | What happens if assertions are missing in a test? | Test fails automatically | ✅ No validation is done | Test skips |
| 24 | What scripting language does Gradle support? | ✅ Groovy/Kotlin | YAML | C++ |
| 25 | Which tool is considered an alternative to Git? | Maven | ✅ Mercurial | Gradle |
| 26 | Which framework helps simulate user interaction in browsers? | ✅ Cypress | JUnit | Git |
| 27 | What kind of tests are most expensive to run? | ✅ End-to-End Tests | Unit Tests | Print Tests |
| 28 | What happens if no annotation is used in a TestNG class? | ✅ TestNG doesn’t know what to run | It runs all methods | Test methods auto-execute |
| 29 | What’s the purpose of `driver.quit()` in test automation? | ✅ Close the browser | Load URL | Start a server |
| 30 | What is the role of `@Listeners` in TestNG? | Skip test methods | ✅ Attach custom listeners | Manage dependencies |

---

## ✅ **True / False Questions with Explanation**

| # | Statement | Answer | Explanation |
|---|-----------|--------|-------------|
| 1 | TestNG requires annotations to identify test methods. | ✅ True | Without `@Test`, TestNG won’t run the method. |
| 2 | Assertions are optional but critical for test validation. | ✅ True | Tests without assertions do not verify outcomes. |
| 3 | Selenium is a unit testing tool. | ❌ False | Selenium is used for UI/functional web testing. |
| 4 | `@BeforeSuite` runs before every test method. | ❌ False | It runs once before the entire suite. |
| 5 | Gradle is based on XML configuration. | ❌ False | Maven uses XML; Gradle uses Groovy/Kotlin. |
| 6 | Serialization helps save an object’s state. | ✅ True | Serialization converts objects to a byte stream. |
| 7 | `@AfterMethod` runs after each test method. | ✅ True | It is used to clean up after individual tests. |
| 8 | You can pass data to tests using `@DataProvider`. | ✅ True | It provides multiple sets of data to tests. |
| 9 | APIs only work for websites. | ❌ False | APIs work in many types of systems, not just web. |
| 10 | End-to-End tests are slower than unit tests. | ✅ True | They simulate full user workflows and take time. |
| 11 | Git helps in tracking changes in code. | ✅ True | It's a version control system. |
| 12 | Maven supports dependency management. | ✅ True | Maven can auto-download and manage libraries. |
| 13 | Without `@BeforeMethod`, setup code won’t run automatically. | ✅ True | It has to be called manually if not annotated. |
| 14 | Assertions in tests are used for printing output. | ❌ False | They check conditions and fail tests when unmet. |
| 15 | `Assert.assertSame()` checks object reference equality. | ✅ True | It checks if two references point to the same object. |
| 16 | All TestNG annotations start with `@`. | ✅ True | They are Java annotations prefixed with `@`. |
| 17 | `@Test` can’t be used without a data provider. | ❌ False | `@Test` works with or without `@DataProvider`. |
| 18 | Integration tests are faster than unit tests. | ❌ False | They are slower due to multiple components interacting. |
| 19 | Gradle can run incremental builds. | ✅ True | It builds only changed parts of the project. |
| 20 | Rekindle is a version of Java. | ❌ False | Rekindle is a collaboration & automation tool. |
| 21 | Cucumber supports BDD testing. | ✅ True | It uses Gherkin to define behavior scenarios. |
| 22 | TestNG works without any annotations. | ❌ False | Annotations are required for TestNG to function. |
| 23 | APIs are useful for communication between systems. | ✅ True | They define rules for system interaction. |
| 24 | Git and Mercurial are both distributed VCS. | ✅ True | Both support distributed version control. |
| 25 | `System.out.println()` is a form of assertion. | ❌ False | It's only for logging, not validation. |
| 26 | Maven has a plugin system. | ✅ True | Plugins extend functionality like testing and building. |
| 27 | Unit tests cover the full application stack. | ❌ False | They only test individual units or components. |
| 28 | Selenium tests run on browsers. | ✅ True | They simulate user interaction with browsers. |
| 29 | TestNG uses XML for configuration. | ✅ True | You can define test suites and parameters in XML. |
| 30 | Gradle is faster due to parallel builds. | ✅ True | Gradle supports parallel and incremental builds. |
| 31 | You can use `@Listeners` to extend TestNG behavior. | ✅ True | They allow custom handling of test events. |
| 32 | `Assert.assertNull()` checks if a value is `null`. | ✅ True | It passes only if the object is null. |
| 33 | End-to-End tests are faster than unit tests. | ❌ False | They are slow due to full system involvement. |
| 34 | TestNG does not support parameterized tests. | ❌ False | It supports them via `@DataProvider` and `@Parameters`. |
| 35 | APIs can only send data, not receive it. | ❌ False | APIs can both send and receive data. |
| 36 | Integration tests ensure that multiple units work together. | ✅ True | They validate component interaction. |
| 37 | 3D is a type of 3D modeling tool. | ❌ False | 3D is a build tool alternative to Gradle/Maven. |
| 38 | `Thread.sleep()` is a best practice in testing. | ❌ False | It's discouraged; use explicit waits instead. |
| 39 | Maven uses `.groovy` for scripting. | ❌ False | Gradle uses Groovy, not Maven. |
| 40 | TestNG can generate test reports. | ✅ True | It provides readable test results. |

---

