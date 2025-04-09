
# 📚 Object-Oriented Programming (OOP) – Complete Guide with Full Examples (With vs Without)

## 🔷 What is OOP?
Object-Oriented Programming (OOP) is a style of programming that organizes code into objects. These objects encapsulate both data and behavior, enabling modular, reusable, and maintainable applications.

---

## ✅ 4 Pillars of OOP + 3 Examples Each (With and Without)

---

## 🔒 ENCAPSULATION

### 🔹 WITH ENCAPSULATION (3 examples)

✅ **Example 1: Secure memory access**
```java
public class Calculator {
    private double memory;

    public void store(double value) {
        memory = value;
    }

    public double recall() {
        return memory;
    }
}
```

✅ **Example 2: Set result with validation**
```java
public class Calculator {
    private double result;

    public void setResult(double value) {
        if (value >= 0) this.result = value;
    }

    public double getResult() {
        return result;
    }
}
```

✅ **Example 3: Precision settings**
```java
public class Calculator {
    private int precision;

    public void setPrecision(int precision) {
        if (precision >= 0) this.precision = precision;
    }

    public int getPrecision() {
        return precision;
    }
}
```

---

### ❌ WITHOUT ENCAPSULATION (3 examples)

❌ **Example 1: Open memory**
```java
public class Calculator {
    public double memory;
}
```

❌ **Example 2: No validation**
```java
public class Calculator {
    public double result;
}
```

❌ **Example 3: Direct access**
```java
public class Calculator {
    public int precision;
}
```

➡️ **Problem:** Anyone can change internal values, introducing bugs.

---

## 🧊 ABSTRACTION

### 🔹 WITH ABSTRACTION (3 examples)

✅ **Example 1: Abstract Operation**
```java
abstract class Operation {
    public abstract double execute(double a, double b);
}
```

✅ **Example 2: Implement Add/Subtract**
```java
class Add extends Operation {
    public double execute(double a, double b) {
        return a + b;
    }
}

class Subtract extends Operation {
    public double execute(double a, double b) {
        return a - b;
    }
}
```

✅ **Example 3: Unified Calculator Method**
```java
public class CalculatorApp {
    public static double calculate(Operation op, double a, double b) {
        return op.execute(a, b);
    }
}
```

---

### ❌ WITHOUT ABSTRACTION (3 examples)

❌ **Example 1: Direct add logic in Calculator**
```java
class Calculator {
    public double add(double a, double b) {
        return a + b;
    }
}
```

❌ **Example 2: Separate methods for each op**
```java
class Calculator {
    public double subtract(double a, double b) {
        return a - b;
    }
}
```

❌ **Example 3: All logic in main()**
```java
public class Main {
    public static void main(String[] args) {
        System.out.println(5 + 3);
    }
}
```

➡️ **Problem:** No unified interface. Hard to manage or expand.

---

## 🧬 INHERITANCE

### 🔹 WITH INHERITANCE (3 examples)

✅ **Example 1: Extend Basic Calculator**
```java
class BasicCalculator {
    public double add(double a, double b) { return a + b; }
}

class ScientificCalculator extends BasicCalculator {
    public double squareRoot(double a) { return Math.sqrt(a); }
}
```

✅ **Example 2: Inherit operation base**
```java
class Operation {
    public String describe() {
        return "Performs basic operation";
    }
}

class Multiply extends Operation {
    public double execute(double a, double b) { return a * b; }
}
```

✅ **Example 3: Logging Calculator**
```java
class LoggingCalculator extends BasicCalculator {
    @Override
    public double add(double a, double b) {
        double result = super.add(a, b);
        System.out.println("Logged: " + result);
        return result;
    }
}
```

---

### ❌ WITHOUT INHERITANCE (3 examples)

❌ **Example 1: Repeating add()**
```java
class ScientificCalculator {
    public double add(double a, double b) {
        return a + b;
    }
}
```

❌ **Example 2: Duplicated operation**
```java
class MultiplyOperation {
    public double execute(double a, double b) {
        return a * b;
    }
}
```

❌ **Example 3: No reusable structure**
```java
class RootCalculator {
    public double root(double a) {
        return Math.sqrt(a);
    }
}
```

➡️ **Problem:** More code, harder to maintain.

---

## 🔁 POLYMORPHISM

### 🔹 WITH POLYMORPHISM (3 examples)

✅ **Example 1: Same method name, different result**
```java
class Divide extends Operation {
    public double execute(double a, double b) {
        return b == 0 ? Double.NaN : a / b;
    }
}
```

✅ **Example 2: Dynamic operation array**
```java
Operation[] operations = { new Add(), new Subtract(), new Divide() };
for (Operation op : operations) {
    System.out.println(op.execute(10, 2));
}
```

✅ **Example 3: Override add**
```java
class FancyCalculator extends BasicCalculator {
    @Override
    public double add(double a, double b) {
        return super.add(a, b) + 0.0001; // Add extra precision
    }
}
```

---

### ❌ WITHOUT POLYMORPHISM (3 examples)

❌ **Example 1: Switch-based logic**
```java
public double calculate(String op, double a, double b) {
    if (op.equals("add")) return a + b;
    else if (op.equals("sub")) return a - b;
    return 0;
}
```

❌ **Example 2: Repeating similar methods**
```java
public double add(double a, double b) { return a + b; }
public double sub(double a, double b) { return a - b; }
```

❌ **Example 3: No overriding**
```java
class AdvancedCalculator extends Calculator {
    // no overridden behavior
}
```

➡️ **Problem:** Code becomes rigid, hard to scale.

---

## ⚖️ Summary Table – OOP vs. No OOP

| Principle     | Solves | With OOP | Without OOP |
|---------------|--------|----------|-------------|
| Encapsulation | Secure data | Prevents direct access to internal state | Bugs due to uncontrolled access |
| Abstraction   | Simplify use | Hides complex logic from user | Cluttered, error-prone logic exposed |
| Inheritance   | Code reuse | Avoids duplicate code | Rewriting same logic repeatedly |
| Polymorphism  | Flexibility | Treat objects generically | Too many if-else or switch cases |

---

## ✅ Summary

- **Encapsulation**: Hide internal state with `private`, access via `get/set`
- **Abstraction**: Use `abstract` classes/interfaces to expose behavior, hide logic
- **Inheritance**: Share logic using `extends`, override behavior
- **Polymorphism**: Same method name behaves differently in child classes

🧠 Tip to remember: **A PIE** 🍰

---

More extras (UML diagrams, quiz, PDF) available if you want! 🎓
