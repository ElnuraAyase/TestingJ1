Absolutely! Let's use the idea of a **Calculator App** and walk through **each OOP principle** — with **3 examples for each**, complete with **code, step-by-step explanations, and before/after comparison** where needed.

We'll use **Python** for simplicity. Ready? Let’s go 🔥

---

## 🧱 1. **Encapsulation** — *Hide internal state, expose only needed methods*

Encapsulation ensures that the internal data of a class is hidden from outside interference and misuse. We interact with it only via public methods.

---

### ✅ Example 1: Hide internal calculator memory

```python
class Calculator:
    def __init__(self):
        self.__memory = 0  # private attribute

    def store(self, value):
        self.__memory = value

    def recall(self):
        return self.__memory
```

**Without encapsulation:**

```python
calc = Calculator()
calc.__memory = 100  # Direct access - not safe!
```

**Why it's better now:**
- Only allowed access via `.store()` and `.recall()`
- Prevents accidental overwrite or invalid data

---

### ✅ Example 2: Protect result from being changed

```python
class Calculator:
    def __init__(self):
        self.__result = 0

    def add(self, a, b):
        self.__result = a + b
        return self.__result

    def get_result(self):
        return self.__result
```

**Benefit:** The user can **read** the result but can't accidentally **change** it.

---

### ✅ Example 3: Validating input before changing state

```python
class Calculator:
    def __init__(self):
        self.__precision = 2

    def set_precision(self, p):
        if p >= 0:
            self.__precision = p
        else:
            print("Invalid precision")

    def get_precision(self):
        return self.__precision
```

**Why this helps:** User can’t set a negative precision – safe by design.

---

## 🧊 2. **Abstraction** — *Hide complex details, expose only essentials*

You define *what* something does, not *how* it works behind the scenes.

---

### ✅ Example 1: Abstract class for calculator operations

```python
from abc import ABC, abstractmethod

class Operation(ABC):
    @abstractmethod
    def execute(self, a, b):
        pass
```

**Why it's useful:** Forces all future operations to implement `execute()`.

---

### ✅ Example 2: Implementing operations

```python
class Addition(Operation):
    def execute(self, a, b):
        return a + b

class Subtraction(Operation):
    def execute(self, a, b):
        return a - b
```

Now you can create any operation without changing the structure — just extend the abstract base class.

---

### ✅ Example 3: Use abstraction in UI/backend

```python
def perform_operation(op: Operation, a, b):
    return op.execute(a, b)

# Abstraction in use
add = Addition()
print(perform_operation(add, 5, 3))  # Output: 8
```

**Why it's awesome:** `perform_operation()` doesn't care if it's add, subtract, etc. It just works.

---

## 🧬 3. **Inheritance** — *Create a child class that reuses parent code*

Let’s build on our `Operation` example.

---

### ✅ Example 1: Operation base class (reused above)

```python
class Operation:
    def describe(self):
        return "Performs a calculation"
```

```python
class Multiplication(Operation):
    def execute(self, a, b):
        return a * b
```

**Why this helps:** All operations can inherit `describe()` — DRY principle.

---

### ✅ Example 2: Extend calculator types

```python
class BasicCalculator:
    def add(self, a, b): return a + b

class ScientificCalculator(BasicCalculator):
    def power(self, a, b): return a ** b
```

**Benefit:** `ScientificCalculator` gets `.add()` for free!

---

### ✅ Example 3: Logging calculator inherits and extends

```python
class LoggingCalculator(BasicCalculator):
    def add(self, a, b):
        result = super().add(a, b)
        print(f"Logged: {a} + {b} = {result}")
        return result
```

**Why it's cool:** We reused the parent `.add()` and added logging.

---

## 🌀 4. **Polymorphism** — *Same method, different behavior*

Polymorphism means different classes can be used interchangeably if they implement the same interface.

---

### ✅ Example 1: Different operation classes, same interface

```python
class Division(Operation):
    def execute(self, a, b):
        return a / b if b != 0 else "Error"
```

```python
for op in [Addition(), Subtraction(), Division()]:
    print(op.execute(10, 5))
```

**Why it rocks:** Unified interface, flexible implementation.

---

### ✅ Example 2: Calculator with dynamic operation

```python
def calculate(op: Operation, a, b):
    return op.execute(a, b)

print(calculate(Multiplication(), 3, 4))  # 12
```

**Swappable behavior**, same function. Great for plug-and-play designs.

---

### ✅ Example 3: Overriding parent method

```python
class FancyCalculator(BasicCalculator):
    def add(self, a, b):
        return f"Sum is: {super().add(a, b)}"
```

**Without polymorphism:** You’d need to check types and write conditionals.

---

## 🧩 Summary Table

| Principle      | Purpose                              | Key Benefit                             |
|----------------|---------------------------------------|------------------------------------------|
| Encapsulation  | Hides internal state                 | Prevents misuse, safer code             |
| Abstraction    | Shows *what*, hides *how*            | Cleaner interfaces, easier changes      |
| Inheritance    | Reuse behavior from a parent class   | Less code, more structure               |
| Polymorphism   | One interface, many implementations  | More flexible and extensible code       |

---

Want this as a mini tutorial file or converted into a class diagram too?
