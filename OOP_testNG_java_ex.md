Absolutely! Let’s **extend the OOP concepts into TestNG** 🧪 by showing **how to write organized, maintainable tests** for the calculator app using **Object-Oriented Programming**.

---

# 🧪 Using OOP in TestNG for Calculator Testing

## 🧠 Why Use OOP in Testing?

OOP makes **your tests modular, reusable, and scalable**:

- Group related test logic into **classes**
- Use **inheritance** for shared test setup
- **Encapsulate** utility logic
- **Abstract** common test steps
- Use **polymorphism** to run the same test logic for different implementations

---

## ✅ Basic Calculator Class (Under Test)

```java
public class Calculator {
    public double add(double a, double b) {
        return a + b;
    }

    public double subtract(double a, double b) {
        return a - b;
    }

    public double multiply(double a, double b) {
        return a * b;
    }

    public double divide(double a, double b) {
        if (b == 0) throw new ArithmeticException("Division by zero");
        return a / b;
    }
}
```

---

## 🧪 1. **Encapsulation in Testing**
### 📘 Keep internal setup/config in private fields and use helper methods.

```java
public class CalculatorTest {
    private Calculator calculator;  // Encapsulated test object

    @BeforeMethod
    public void setUp() {
        calculator = new Calculator();  // Initialization hidden in method
    }

    @Test
    public void testAddition() {
        double result = calculator.add(3, 2);
        Assert.assertEquals(result, 5.0, "Addition failed");
    }
}
```

**🔍 Why this is OOP:**
- `calculator` is private = **Encapsulation**
- Setup logic is modular = **Reusability**

---

## 🧪 2. **Abstraction in Test Logic**
### 📘 Abstract repetitive logic like checking results into helper methods.

```java
public abstract class BaseCalculatorTest {
    protected Calculator calculator;

    @BeforeMethod
    public void setUp() {
        calculator = new Calculator();
    }

    protected void assertCalculation(double actual, double expected) {
        Assert.assertEquals(actual, expected, 0.0001, "Calculation mismatch");
    }
}
```

```java
public class AdditionTest extends BaseCalculatorTest {
    @Test
    public void testAddPositive() {
        double result = calculator.add(5, 7);
        assertCalculation(result, 12);
    }
}
```

**🔍 Why this is OOP:**
- Common method in `BaseCalculatorTest` = **Abstraction**
- Child classes don’t care how `assertCalculation()` works

---

## 🧪 3. **Inheritance in Tests**
### 📘 Share setup and utility methods across multiple test classes.

```java
public class SubtractionTest extends BaseCalculatorTest {
    @Test
    public void testSubtractPositive() {
        double result = calculator.subtract(10, 4);
        assertCalculation(result, 6);
    }
}
```

**🔍 Why this is OOP:**
- Test class inherits from base class = **Inheritance**
- Reduces repeated setup/assertion logic

---

## 🧪 4. **Polymorphism in Test Strategy**
### 📘 You can test different calculator implementations using polymorphism.

```java
public interface ICalculator {
    double add(double a, double b);
    double subtract(double a, double b);
}
```

```java
public class BasicCalculator implements ICalculator {
    public double add(double a, double b) { return a + b; }
    public double subtract(double a, double b) { return a - b; }
}
```

```java
public class AdvancedCalculator implements ICalculator {
    public double add(double a, double b) { return a + b + 0.0001; }  // Small offset
    public double subtract(double a, double b) { return a - b; }
}
```

### Test using polymorphic reference:

```java
public abstract class AbstractCalculatorTest {
    protected ICalculator calculator;

    protected abstract ICalculator createCalculator();

    @BeforeMethod
    public void setUp() {
        calculator = createCalculator();
    }

    @Test
    public void testAdd() {
        double result = calculator.add(1, 2);
        Assert.assertEquals(result, expectedAdditionResult(), 0.001);
    }

    protected abstract double expectedAdditionResult();
}
```

```java
public class BasicCalculatorTest extends AbstractCalculatorTest {
    protected ICalculator createCalculator() {
        return new BasicCalculator();
    }

    protected double expectedAdditionResult() {
        return 3.0;
    }
}
```

```java
public class AdvancedCalculatorTest extends AbstractCalculatorTest {
    protected ICalculator createCalculator() {
        return new AdvancedCalculator();
    }

    protected double expectedAdditionResult() {
        return 3.0001;
    }
}
```

**🔍 Why this is OOP:**
- You’re using the **same test logic** with **different calculator classes**
- Uses **Polymorphism via interface** and **abstract test classes**

---

# 📌 Summary: OOP in TestNG

| Principle       | How It's Used in Testing                               | Benefit                                         |
|------------------|--------------------------------------------------------|--------------------------------------------------|
| Encapsulation    | Keep `Calculator` private and use setup methods        | Protect test state and improve modularity        |
| Abstraction      | Move common methods (e.g., `assertCalculation`) to base class | Simplifies test code, hides unnecessary logic     |
| Inheritance      | Use `BaseTest` for shared setup/assert logic           | Avoid duplication and keep tests DRY             |
| Polymorphism     | Test multiple calculator implementations using interface | Reuse test logic across different classes        |

---

## ✅ Final Thoughts

Using OOP in **TestNG** makes your tests:

- Easier to write
- Easier to maintain
- Flexible for multiple implementations
- Aligned with software engineering best practices

Would you like me to generate:
- ✅ A full working Maven/Gradle Java project with this?
- ✅ A UML diagram of test class structure?
- ✅ A downloadable cheat sheet?

Just say the word!
