
---

# 🧮 OOP Principles Explained with Calculator App (Java)

## 🔷 What is OOP?

Object-Oriented Programming (OOP) is a programming paradigm that uses "objects" — instances of classes — to organize software design. Instead of focusing on functions and logic, OOP centers around data (attributes) and methods (functions or procedures) that act on that data. The main benefit of OOP is that it enables easier organization, modification, and scaling of code by promoting reusability, flexibility, and modularity.

The key principles of OOP are:

1. **Encapsulation** – Hiding internal states and requiring all interactions to be performed through methods.
2. **Abstraction** – Hiding complex details and showing only the necessary parts.
3. **Inheritance** – Allowing new classes to take on the properties of existing ones.
4. **Polymorphism** – Enabling objects of different classes to be treated as instances of the same class through shared interfaces.

---

## 🔐 1. ENCAPSULATION

### 📘 Explanation:
Encapsulation is the principle of bundling the data (attributes) and the methods that operate on the data into a single unit or class. It also restricts direct access to some of the object's components, which is a means of preventing unintended interference with the internal workings of an object.

---

### ✅ WITH ENCAPSULATION (Calculator App)

#### Example 1: Secure memory
```java
public class Calculator {
    private double memory; // Internal state is hidden from the outside, ensuring no direct access

    // Method to store a value in memory, which controls how memory is updated
    public void store(double value) {
        memory = value;  // Memory can only be updated using this method
    }

    // Method to retrieve the value from memory, providing read-only access
    public double recall() {
        return memory;  // Memory can only be accessed, not modified directly
    }
}
```

#### ❌ WITHOUT ENCAPSULATION - Example 1
```java
public class Calculator {
    public double memory;  // Direct access to memory, no restrictions or control
}

// Example of unsafe use:
Calculator c = new Calculator();
c.memory = -10000;  // The internal memory state can be directly modified, leading to potential issues
```

---

#### Example 2: Safe result access
```java
public class Calculator {
    private double result;  // Result is hidden from outside, ensuring controlled access

    // Method to perform an addition operation and store the result
    public double add(double a, double b) {
        result = a + b;  // The result of the addition is stored safely
        return result;  // The result is returned to the caller
    }

    // Getter method to safely access the result (read-only)
    public double getResult() {
        return result;  // Access to the result is controlled and read-only
    }
}
```

#### ❌ WITHOUT ENCAPSULATION - Example 2
```java
public class Calculator {
    public double result;  // Direct access to result, can be changed without any checks
}

// Example of unsafe access:
Calculator c = new Calculator();
c.result = 1000;  // Result can be directly changed without any control over its value
```

---

#### Example 3: Input validation
```java
public class Calculator {
    private int precision;  // Precision value is hidden, access is controlled

    // Method to set the precision, with validation to ensure it is a positive number
    public void setPrecision(int p) {
        if (p >= 0) {
            precision = p;  // Only allow valid (non-negative) precision values
        } else {
            System.out.println("Invalid precision!");  // Print error if precision is negative
        }
    }

    // Getter method to retrieve the current precision value (read-only)
    public int getPrecision() {
        return precision;  // Provides controlled access to the precision value
    }
}
```

#### ❌ WITHOUT ENCAPSULATION - Example 3
```java
public class Calculator {
    public int precision;  // Direct access to precision, no validation on values
}

// Example of unsafe use:
Calculator c = new Calculator();
c.precision = -5;  // Precision can be set to any value, even negative, causing potential errors
```

➡️ **Effect:** Without encapsulation, any part of the code can change internal values directly, which may lead to bugs, inconsistent states, or unpredictable behavior. Encapsulation prevents this by restricting how internal states are accessed and modified.

---

## 🧊 2. ABSTRACTION

### 📘 Explanation:
Abstraction is the concept of hiding the internal workings of a system and exposing only the necessary parts to the user. It allows the user to interact with an object or system through a simplified interface, without needing to understand its internal implementation.

---

### ✅ WITH ABSTRACTION (Calculator App)

#### Example 1: Abstract class for calculator operations
```java
// Abstract class representing a generic operation
abstract class Operation {
    public abstract double execute(double a, double b);  // The behavior is defined, but implementation is deferred to subclasses
}
```

#### ❌ WITHOUT ABSTRACTION - Example 1
```java
// Without abstraction, the calculator would have no structure to handle operations
public class Calculator {
    public double add(double a, double b) {
        return a + b;  // Direct implementation without abstraction
    }

    public double subtract(double a, double b) {
        return a - b;  // Direct implementation without abstraction
    }
}
```

---

#### Example 2: Implementing different operations
```java
class Addition extends Operation {
    @Override
    public double execute(double a, double b) {
        return a + b;  // Specific implementation for addition
    }
}

class Subtraction extends Operation {
    @Override
    public double execute(double a, double b) {
        return a - b;  // Specific implementation for subtraction
    }
}
```

#### ❌ WITHOUT ABSTRACTION - Example 2
```java
// Without abstraction, different operation types are not reusable
public class Calculator {
    public double add(double a, double b) {
        return a + b;  // Direct addition implementation
    }

    public double subtract(double a, double b) {
        return a - b;  // Direct subtraction implementation
    }
}
```

---

#### Example 3: Calculator only uses the interface
```java
public class CalculatorApp {
    // Method that takes any operation and performs it, without needing to know the specific operation
    public static double calculate(Operation op, double a, double b) {
        return op.execute(a, b);  // Doesn't care if it's add or subtract, just executes the operation
    }

    public static void main(String[] args) {
        // Example usage of abstraction where the operation type is hidden
        System.out.println(calculate(new Addition(), 5, 3));  // Output: 8
    }
}
```

#### ❌ WITHOUT ABSTRACTION - Example 3
```java
// Without abstraction, the calculator would have to know about specific operations
public class CalculatorApp {
    public static void main(String[] args) {
        // Example usage without abstraction
        Calculator calc = new Calculator();
        System.out.println(calc.add(5, 3));  // Direct use of the add method
    }
}
```

➡️ **Effect:** Without abstraction, the system is less flexible and harder to extend. Every time a new operation is added, the entire system may need to be modified. Abstraction provides a clean and scalable way to add new functionality without affecting existing code.

---

## 🧬 3. INHERITANCE

### 📘 Explanation:
Inheritance allows a class (child) to reuse code from another class (parent). This supports reusability and logical hierarchy.

---

### ✅ WITH INHERITANCE (Calculator App)

#### Example 1: Extend operations
```java
class Operation {
    public String describe() {
        return "Performs a calculation";  // Common behavior for all operations
    }
}

class Multiply extends Operation {
    @Override
    public double execute(double a, double b) {
        return a * b;  // Extends base behavior and implements the multiply operation
    }
}
```

#### ❌ WITHOUT INHERITANCE - Example 1
```java
// Without inheritance, each operation would need to define its own description
public class Multiply {
    public double execute(double a, double b) {
        return a * b;  // Direct implementation without extending a base operation class
    }

    public String describe() {
        return "Performs multiplication";  // Direct implementation of description
    }
}
```

---

#### Example 2: Extend calculator types
```java
class BasicCalculator {
    public double add(double a, double b) {
        return a + b;  // Basic addition functionality
    }
}

class ScientificCalculator extends BasicCalculator {
    public double power(double a, double b) {
        return Math.pow(a, b);  // Adds power functionality to the scientific calculator
    }
}
```

#### ❌ WITHOUT INHERITANCE - Example 2
```java
// Without inheritance, there would be duplicate code for basic and scientific calculators
public class ScientificCalculator {
    public double add(double a, double b) {
        return a + b;  // Repeated addition functionality
    }

    public double power(double a, double b) {
        return Math.pow(a, b);  // Scientific calculator functionality
    }
}
```

---

#### Example 3: Add logging via override
```java
class LoggingCalculator extends BasicCalculator {
    @Override
    public double add(double a, double b) {
        double result = super.add(a, b);  // Reuse parent method
        System.out.println("Logged: " + a + " + " + b + " = " + result);  // Log the operation
        return result;
    }
}
```

#### ❌ WITHOUT INHERITANCE - Example 3
```java
// Without inheritance, we would need to implement everything in one class
public class LoggingCalculator {
    public double add(double a, double b) {
        double result = a + b;
        System.out.println("Logged: " + a + " + " + b + " = " + result);  // Log the operation
        return result;
    }
}
```

➡️ **Effect:** Without inheritance, there is redundant code, and the system becomes harder to maintain. Inheritance allows you to build upon existing functionality, promoting code reuse and reducing redundancy.

---


## 🔁 4. POLYMORPHISM
### 📘 Explanation:
Polymorphism allows you to use one method or class name with different behaviors depending on the object type. It provides flexibility and the ability to extend code without altering its structure.

### ✅ WITH POLYMORPHISM (Calculator App)
Example 1: Shared interface, different results
java
Copy
Edit
class Division extends Operation {
    @Override
    public double execute(double a, double b) {
        return b == 0 ? Double.NaN : a / b;  // Handle division by zero
    }
}
❌ WITHOUT POLYMORPHISM - Example 1
java
Copy
Edit
public class Calculator {
    public double divide(double a, double b) {
        if (b == 0) {
            return Double.NaN;  // Handle division by zero
        }
        return a / b;  // Direct division method, no polymorphism
    }
}
Example 2: Loop through operations
java
Copy
Edit
public class Main {
    public static void main(String[] args) {
        Operation[] ops = {
            new Addition(), new Subtraction(), new Division()
        };

        for (Operation op : ops) {
            System.out.println(op.execute(10, 5));  // Polymorphism: Same method, different behavior
        }
    }
}
❌ WITHOUT POLYMORPHISM - Example 2
java
Copy
Edit
public class CalculatorApp {
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        System.out.println(calc.add(10, 5));  // Add operation
        System.out.println(calc.subtract(10, 5));  // Subtract operation
        System.out.println(calc.divide(10, 5));  // Divide operation
    }
}
Example 3: Override in child class
java
Copy
Edit
class FancyCalculator extends BasicCalculator {
    @Override
    public double add(double a, double b) {
        return super.add(a, b) + 0.001;  // Custom behavior for addition, overriding the base method
    }
}
❌ WITHOUT POLYMORPHISM - Example 3
java
Copy
Edit
public class Calculator {
    public double add(double a, double b) {
        return a + b;  // Basic addition, no polymorphism or custom behavior
    }
}
➡️ Effect: Without polymorphism, you would need separate methods for each operation. Polymorphism allows you to reuse methods, making the code cleaner and more extensible.

## 🧠 BONUS: 2 Extra Examples (Non-Calculator Projects)


### ✅ **1. Banking System: Encapsulation and Data Protection**

#### **Without OOP:**

```java
public class BankingSystem {
    static double balance = 1000;  // Static balance shared across all methods

    // Withdraws money from the balance
    public static void withdraw(double amount) {
        if (balance >= amount) {
            balance -= amount;
            System.out.println("Withdrawn " + amount + ", remaining balance is " + balance);
        } else {
            System.out.println("Insufficient balance");
        }
    }

    public static void main(String[] args) {
        withdraw(200);  // Calling the withdraw method
        System.out.println("Balance after withdrawal: " + balance);  // Direct access to balance variable
    }
}
```

**Explanation:**
- **Without OOP**: The balance is directly manipulated, and methods aren't encapsulated in a class. If you need to change the balance logic, you have to modify it everywhere.
- **Effect**: It lacks data protection and makes it difficult to extend or change the logic for different accounts.

#### **With OOP:**

```java
public class BankAccount {
    private double balance;  // Encapsulating balance to protect it

    // Constructor to initialize balance
    public BankAccount(double initialBalance) {
        this.balance = initialBalance;
    }

    // Withdraw method to ensure proper access to balance
    public void withdraw(double amount) {
        if (balance >= amount) {
            balance -= amount;
            System.out.println("Withdrawn " + amount + ", remaining balance is " + balance);
        } else {
            System.out.println("Insufficient balance");
        }
    }

    // Getter method to access balance (encapsulation)
    public double getBalance() {
        return balance;
    }

    public static void main(String[] args) {
        BankAccount account = new BankAccount(1000);  // Creating an object of BankAccount
        account.withdraw(200);  // Calling withdraw on the object
        System.out.println("Balance after withdrawal: " + account.getBalance());  // Accessing balance via getter
    }
}
```

**Explanation:**
- **With OOP**: We encapsulate the balance with private access and only expose necessary methods to modify or access it (like `withdraw` and `getBalance`).
- **Effect**: This provides data protection and flexibility. You can change internal logic without affecting external code.

---

### ✅ **2. Real Estate App: Abstraction of Property Types**

#### **Without OOP:**

```java
public class RealEstateApp {
    public static double calculateArea(String propertyType, double length, double width) {
        if (propertyType.equals("house")) {
            return length * width;  // House area
        } else if (propertyType.equals("apartment")) {
            return length * width;  // Apartment area
        } else {
            return 0;  // Default case
        }
    }

    public static void main(String[] args) {
        System.out.println("House Area: " + calculateArea("house", 10, 20));
        System.out.println("Apartment Area: " + calculateArea("apartment", 15, 10));
    }
}
```

**Explanation:**
- **Without OOP**: The logic for calculating areas is embedded in a single method, making it hard to extend for other property types (like commercial buildings).
- **Effect**: Adding more property types will require modifying the method every time, violating the **Open/Closed Principle**.

#### **With OOP:**

```java
abstract class Property {
    public abstract double calculateArea();  // Abstract method to calculate area
}

class House extends Property {
    private double length;
    private double width;

    public House(double length, double width) {
        this.length = length;
        this.width = width;
    }

    @Override
    public double calculateArea() {
        return length * width;  // Specific calculation for House
    }
}

class Apartment extends Property {
    private double length;
    private double width;

    public Apartment(double length, double width) {
        this.length = length;
        this.width = width;
    }

    @Override
    public double calculateArea() {
        return length * width;  // Specific calculation for Apartment
    }
}

public class RealEstateApp {
    public static void main(String[] args) {
        Property house = new House(10, 20);  // Creating a House object
        Property apartment = new Apartment(15, 10);  // Creating an Apartment object

        System.out.println("House Area: " + house.calculateArea());
        System.out.println("Apartment Area: " + apartment.calculateArea());
    }
}
```

**Explanation:**
- **With OOP**: The **Property** class is abstract, and specific property types (House, Apartment) extend it and provide their own implementation of `calculateArea()`.
- **Effect**: This allows for easy extension with more property types without modifying existing code. It's more flexible and follows **the Open/Closed Principle**.

---

### ✅ **3. Game App: Character Inheritance and Polymorphism**

#### **Without OOP:**

```java
public class GameApp {
    public static void attack(String characterType) {
        if (characterType.equals("warrior")) {
            System.out.println("Warrior slashes!");  // Warrior attack
        } else if (characterType.equals("mage")) {
            System.out.println("Mage casts spell!");  // Mage attack
        } else {
            System.out.println("Character attacks");
        }
    }

    public static void main(String[] args) {
        attack("warrior");  // Calling attack for Warrior
        attack("mage");  // Calling attack for Mage
    }
}
```

**Explanation:**
- **Without OOP**: The `attack` method depends on string input and needs to be changed every time a new character type is introduced.
- **Effect**: This results in a **rigid** design and requires frequent modifications.

#### **With OOP:**

```java
class Character {
    public void attack() {
        System.out.println("Character attacks");  // General attack
    }
}

class Warrior extends Character {
    @Override
    public void attack() {
        System.out.println("Warrior slashes!");  // Warrior-specific attack
    }
}

class Mage extends Character {
    @Override
    public void attack() {
        System.out.println("Mage casts spell!");  // Mage-specific attack
    }
}

public class GameApp {
    public static void main(String[] args) {
        Character warrior = new Warrior();  // Creating Warrior object
        Character mage = new Mage();  // Creating Mage object

        warrior.attack();  // Polymorphic behavior (calls Warrior's attack)
        mage.attack();  // Polymorphic behavior (calls Mage's attack)
    }
}
```

**Explanation:**
- **With OOP**: We use **inheritance** (Warrior, Mage) to define common behavior and **polymorphism** to override `attack()` based on the character type.
- **Effect**: This design is more flexible and allows the introduction of new character types without changing the existing code.

---

### ✅ **4. Vehicle App: Inheritance for Vehicle Types**

#### **Without OOP:**

```java
public class VehicleApp {
    public static void vehicleInfo(String vehicleType, int speed) {
        if (vehicleType.equals("car")) {
            System.out.println("Car speed: " + speed + " km/h");
        } else if (vehicleType.equals("truck")) {
            System.out.println("Truck speed: " + speed + " km/h");
        } else {
            System.out.println("Unknown vehicle");
        }
    }

    public static void main(String[] args) {
        vehicleInfo("car", 120);  // Calling vehicleInfo for Car
        vehicleInfo("truck", 80);  // Calling vehicleInfo for Truck
    }
}
```

**Explanation:**
- **Without OOP**: The logic for each vehicle type is embedded in a single method. It becomes hard to extend the system (e.g., for buses or bikes).
- **Effect**: **Tight coupling** between the vehicle types and logic, which makes maintenance harder.

#### **With OOP:**

```java
class Vehicle {
    protected int speed;  // Common property for all vehicles

    public Vehicle(int speed) {
        this.speed = speed;
    }

    public void displayInfo() {
        System.out.println("Vehicle speed: " + speed + " km/h");
    }
}

class Car extends Vehicle {
    public Car(int speed) {
        super(speed);  // Passing speed to parent class constructor
    }

    @Override
    public void displayInfo() {
        System.out.println("Car speed: " + speed + " km/h");
    }
}

class Truck extends Vehicle {
    public Truck(int speed) {
        super(speed);  // Passing speed to parent class constructor
    }

    @Override
    public void displayInfo() {
        System.out.println("Truck speed: " + speed + " km/h");
    }
}

public class VehicleApp {
    public static void main(String[] args) {
        Vehicle car = new Car(120);  // Creating Car object
        Vehicle truck = new Truck(80);  // Creating Truck object

        car.displayInfo();  // Displaying car info
        truck.displayInfo();  // Displaying truck info
    }
}
```

**Explanation:**
- **With OOP**: We use **inheritance** to create specific vehicle types (Car, Truck) that share common behavior from the `Vehicle` superclass.
- **Effect**: This is more maintainable and scalable. Adding a new vehicle type (e.g., Bike) would be as simple as creating a new subclass.

---

### ✅ **5. E-commerce App: Product Abstraction**

#### **Without OOP:**

```java
public class ECommerceApp {
    public static double calculatePrice(String productType) {
        if (productType.equals("book")) {
            return 12.99;  // Price of a book
        } else if (productType.equals("electronics")) {
            return 199.99;  // Price of electronics
        } else {
            return 0;  // Default case
        }
    }

    public static void main(String[] args) {
        System.out.println("Price of Book: " + calculatePrice("book"));
        System.out.println("Price of Electronics: " + calculatePrice("electronics"));
    }
}
```

**Explanation:**
- **Without OOP**: The product logic is hardcoded into the `calculatePrice` method, making it hard to introduce new products without modifying this code.
- **Effect**: It doesn’t scale well if we want to add more product types or change the pricing model.

#### **With OOP:**

```java
abstract class Product {
    public abstract double getPrice();  // Abstract method to get product price
}

class Book extends Product {
    @Override
    public double getPrice() {
        return 12.99;  // Price of book
    }
}

class Electronics extends Product {
    @Override
    public double getPrice() {
        return 199.99;  // Price of electronics
    }
}

public class ECommerceApp {
    public static void main(String[] args) {
        Product book = new Book();  // Creating Book object
        Product electronics = new Electronics();  // Creating Electronics object

        System.out.println("Price of Book: " + book.getPrice());
        System.out.println("Price of Electronics: " + electronics.getPrice());
    }
}
```

**Explanation:**
- **With OOP**: We use **abstraction** to define a generic `Product` class, and each product type (Book, Electronics) extends this class to implement the price calculation.
- **Effect**: This approach allows easy addition of new product types without modifying existing code, which follows **the Open/Closed Principle**.

---

### ✅ **6. Invoice System: Polymorphism for Different Invoice Types**

#### **Without OOP:**

```java
public class InvoiceSystem {
    public static double calculateTotal(String invoiceType, double amount, double taxRate) {
        if (invoiceType.equals("standard")) {
            return amount + (amount * taxRate);  // Standard invoice calculation
        } else if (invoiceType.equals("discounted")) {
            return amount + (amount * taxRate) - 10;  // Discounted invoice calculation
        } else {
            return amount;
        }
    }

    public static void main(String[] args) {
        System.out.println("Standard Invoice Total: " + calculateTotal("standard", 100, 0.15));
        System.out.println("Discounted Invoice Total: " + calculateTotal("discounted", 100, 0.15));
    }
}
```

**Explanation:**
- **Without OOP**: The invoice calculation logic is repeated for different types, making the code **less flexible**.
- **Effect**: It’s harder to extend the system for new invoice types, and each addition requires modifying this method.

#### **With OOP:**

```java
class Invoice {
    public double calculateTotal(double amount, double taxRate) {
        return amount + (amount * taxRate);  // Standard invoice calculation
    }
}

class DiscountedInvoice extends Invoice {
    @Override
    public double calculateTotal(double amount, double taxRate) {
        return amount + (amount * taxRate) - 10;  // Discounted invoice calculation
    }
}

public class InvoiceSystem {
    public static void main(String[] args) {
        Invoice standardInvoice = new Invoice();  // Creating standard invoice
        Invoice discountedInvoice = new DiscountedInvoice();  // Creating discounted invoice

        System.out.println("Standard Invoice Total: " + standardInvoice.calculateTotal(100, 0.15));
        System.out.println("Discounted Invoice Total: " + discountedInvoice.calculateTotal(100, 0.15));
    }
}
```

**Explanation:**
- **With OOP**: **Polymorphism** allows us to create different invoice types with their own behavior (standard, discounted) while keeping the same method name (`calculateTotal`).
- **Effect**: This makes the code **flexible** and easy to extend with more types of invoices (e.g., tax-exempt).

---

### ✅ **7. Calculator: Overloading Example (Same Method Name)**

#### **Without OOP:**

```java
public class Calculator {
    public static double calculate(double x, double y) {
        return x + y;
    }

    public static void main(String[] args) {
        System.out.println("Sum: " + calculate(5, 3));  // Using the calculate method
    }
}
```

**Explanation:**
- **Without Overloading**: There’s only one `calculate` method that only performs addition. If we want more operations (like subtraction, multiplication), we’d need to create multiple methods or add if-else statements, making the code longer.

#### **With Overloading:**

```java
public class Calculator {
    // Overloaded method for addition
    public double calculate(double x, double y) {
        return x + y;
    }

    // Overloaded method for subtraction
    public double calculate(double x, double y, String operation) {
        if (operation.equals("subtract")) {
            return x - y;
        }
        return 0;
    }

    public static void main(String[] args) {
        Calculator calc = new Calculator();  // Creating a Calculator object

        System.out.println("Sum: " + calc.calculate(5, 3));  // Using overloaded method for addition
        System.out.println("Difference: " + calc.calculate(5, 3, "subtract"));  // Using overloaded method for subtraction
    }
}
```

**Explanation:**
- **With Overloading**: We have **multiple methods** with the same name but different parameters (number of arguments or type of argument).
- **Effect**: Overloading keeps the method names consistent, reducing redundancy and improving readability.

---

### ✅ **8. Discount System: Overloading with Different Parameters**

#### **Without Overloading:**

```java
public class DiscountSystem {
    public static double calculateDiscount(double price) {
        return price * 0.1;  // 10% discount for regular customers
    }

    public static void main(String[] args) {
        System.out.println("Discount: " + calculateDiscount(200));  // Calling method with one parameter
    }
}
```

**Explanation:**
- **Without Overloading**: There’s only one method that gives a fixed discount (10%).
- **Effect**: If we want different discounts based on conditions (e.g., seasonal or VIP discounts), we need to add conditions in this method.

#### **With Overloading:**

```java
public class DiscountSystem {
    // Overloaded method for regular discount
    public static double calculateDiscount(double price) {
        return price * 0.1;  // 10% discount for regular customers
    }

    // Overloaded method for VIP discount
    public static double calculateDiscount(double price, boolean isVIP) {
        if (isVIP) {
            return price * 0.2;  // 20% discount for VIP customers
        }
        return price * 0.1;
    }

    public static void main(String[] args) {
        System.out.println("Regular Discount: " + calculateDiscount(200));  // Regular discount for one parameter
        System.out.println("VIP Discount: " + calculateDiscount(200, true));  // VIP discount using two parameters
    }
}
```

**Explanation:**
- **With Overloading**: We can **adjust** the discount logic for different customer types using method overloading.
- **Effect**: This reduces complexity in the code by having a method for different scenarios, providing flexibility in the discount system.

---

### ✅ **9. Shopping Cart: Overloading for Item Quantity**

#### **Without Overloading:**

```java
public class ShoppingCart {
    public static double calculateTotal(double price) {
        return price;  // Total price for a single item
    }

    public static void main(String[] args) {
        System.out.println("Total: " + calculateTotal(50));  // Total price for one item
    }
}
```

**Explanation:**
- **Without Overloading**: The `calculateTotal` method only handles single items. If you want to add quantities, you'd need to modify the method.

#### **With Overloading:**

```java
public class ShoppingCart {
    // Overloaded method for single item
    public static double calculateTotal(double price) {
        return price;  // Total price for one item
    }

    // Overloaded method for multiple items
    public static double calculateTotal(double price, int quantity) {
        return price * quantity;  // Total price for multiple items
    }

    public static void main(String[] args) {
        System.out.println("Total for one item: " + calculateTotal(50));

  // Total for single item
        System.out.println("Total for multiple items: " + calculateTotal(50, 3));  // Total for 3 items
    }
}
```

**Explanation:**
- **With Overloading**: We use method overloading to calculate the total for both single items and multiple items, without needing to create new method names.
- **Effect**: It makes the code cleaner and more intuitive for handling different purchase scenarios.

---

### ✅ **10. Utility Classes: Overloading for String Manipulation**

#### **Without Overloading:**

```java
public class StringUtils {
    public static String capitalize(String text) {
        return text.substring(0, 1).toUpperCase() + text.substring(1);  // Capitalizing first letter
    }

    public static void main(String[] args) {
        System.out.println(capitalize("hello"));  // Calling capitalize method
    }
}
```

**Explanation:**
- **Without Overloading**: The `capitalize` method only works for simple string input. If you wanted to change capitalization for different cases (e.g., upper case for all characters), you'd need to write new methods.

#### **With Overloading:**

```java
public class StringUtils {
    // Overloaded method for capitalizing first letter
    public static String capitalize(String text) {
        return text.substring(0, 1).toUpperCase() + text.substring(1);
    }

    // Overloaded method for converting to uppercase
    public static String capitalize(String text, boolean toUpperCase) {
        if (toUpperCase) {
            return text.toUpperCase();  // Capitalize all letters
        } else {
            return text.substring(0, 1).toUpperCase() + text.substring(1);  // Capitalize first letter only
        }
    }

    public static void main(String[] args) {
        System.out.println(capitalize("hello"));  // Capitalize only first letter
        System.out.println(capitalize("hello", true));  // Convert entire string to uppercase
    }
}
```

**Explanation:**
- **With Overloading**: We provide two versions of the `capitalize` method, making the utility class more **flexible**.
- **Effect**: This reduces the need for creating multiple methods, improves **code reusability**, and keeps the code compact.

---

---

### ⚖️ **Summary Table – OOP vs. No OOP**

| **Principle**     | **Solves**         | **With OOP**                                             | **Without OOP**                                    |
|-------------------|--------------------|----------------------------------------------------------|----------------------------------------------------|
| **Encapsulation**  | Secure data        | Prevents direct access to internal state                 | Bugs due to uncontrolled access                   |
| **Abstraction**    | Simplify use       | Hides complex logic from user                            | Cluttered, error-prone logic exposed              |
| **Inheritance**    | Code reuse         | Avoids duplicate code                                    | Rewriting same logic repeatedly                   |
| **Polymorphism**   | Flexibility        | Treat objects generically                                | Too many if-else or switch cases                  |

---

### ✅ **Summary**

- **Encapsulation**: Hide internal state with private attributes, access through getter/setter methods.
- **Abstraction**: Use abstract classes or interfaces to expose behavior while hiding implementation details.
- **Inheritance**: Share common logic using `extends` and override behavior in child classes.
- **Polymorphism**: Same method name behaves differently depending
