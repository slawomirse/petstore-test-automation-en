# Robot Framework Exercises

This repository contains 16 progressive exercises to learn Robot Framework, a generic open-source automation framework for acceptance testing and acceptance test-driven development (ATDD).

## Prerequisites

- `uv` package manager

## Running Tests

To run all tests:
```bash
uv run python -m robot exercises/robot/
```

To run a specific exercise:
```bash
uv run python -m robot exercises/robot/exercise_1/solution/
```

To run only practice or solution:
```bash
uv run python -m robot exercises/robot/exercise_1/practice/
```

## Exercise Structure

Each exercise is organized as follows:
```
exercise_X/
├── practice/
│   └── practice.robot       # Template for student practice
└── solution/
    └── solution.robot       # Complete solution
```

---

## Exercises Overview

### Exercise 1: My First Test
**Objective:** Create your first Robot Framework test

**Description:** Learn the basics of Robot Framework by creating a simple test that logs a message to the console.

**Test Steps:**
1. Create a file `robot_test.robot`
2. Add a `*** Test Cases ***` section
3. Add a test called `My First Test`
4. Use the `Log To Console` keyword to print a message
5. Run the test with: `uv run python -m robot tests/`

**Key Concepts:**
- Test file structure
- Test case naming
- Built-in keywords

---

### Exercise 2: Variables in Tests
**Objective:** Understand and use variables in Robot Framework

**Description:** Learn how to define and use variables in Robot Framework tests.

**Test Steps:**
1. Add a `*** Variables ***` section
2. Create a variable `${NAME}`
3. Use the variable in your test
4. Run the test

**Key Concepts:**
- Variable declaration
- Variable scope (test level)
- Built-in variable syntax `${VARIABLE}`

---

### Exercise 3: Testing Variable Scope
**Objective:** Understand different variable scopes in Robot Framework

**Description:** Learn about local, test, and suite variable scopes and how they persist across tests.

**Test Steps:**
1. Add three tests:
   - One for local variables
   - One for test variables
   - One for suite variables
2. In the first test:
   - Create a local variable using `Set Variable`
   - Use it in the same test
3. In the second test:
   - Create a test variable using `Set Test Variable`
   - Use it in a keyword and the same test
4. In the third test:
   - Create a suite variable using `Set Suite Variable`
   - Use it in a subsequent test
5. Run the entire file

**Key Concepts:**
- Local variables (available only in a test)
- Test variables (available in the same test and called keywords)
- Suite variables (available across all tests in the suite)

---

### Exercise 4: Lists, Dictionaries, and Data Types
**Objective:** Work with different data types in Robot Framework

**Description:** Create and manipulate lists and dictionaries, and check data types.

**Test Steps:**
1. Add a test called `Work With List And Dictionary`
2. Create:
   - A number variable
   - A list variable
   - A dictionary variable
3. Log:
   - The first element of the list
   - Values for key1 and key2 from the dictionary
4. Run the test and check the report

**Key Concepts:**
- Creating lists with `Create List`
- Creating dictionaries with `Create Dictionary`
- Accessing list elements: `${list}[0]`
- Accessing dictionary values: `${dict}[key]`
- Type checking with `Evaluate`

---

### Exercise 5: Own Keyword Without Arguments
**Objective:** Create custom keywords without parameters

**Description:** Learn how to create reusable keywords (custom Robot Framework functions) that don't require arguments.

**Test Steps:**
1. Add a `*** Keywords ***` section if not present
2. Create a keyword `Display Message`
3. Add a test called `Test With Own Keyword`
4. Call your keyword in the test
5. Run the test

**Key Concepts:**
- Keyword definition
- Keyword invocation
- Keyword naming conventions (CamelCase with spaces)

---

### Exercise 6: Own Keyword With Argument
**Objective:** Create custom keywords with parameters

**Description:** Learn how to create keywords that accept arguments for greater flexibility.

**Test Steps:**
1. Create a keyword `Greet User`
2. Add an argument `${name}`
3. Add a test called `Greeting`
4. Call the keyword with a specific value
5. Run the test

**Key Concepts:**
- Keyword arguments using `[Arguments]`
- Argument passing
- Parameterized keywords

---

### Exercise 7: Simple Assertion
**Objective:** Validate test results using assertions

**Description:** Learn how to use assertion keywords to verify test expectations.

**Test Steps:**
1. Add a test called `Text Validation`
2. Create a variable with value `abc`
3. Check it using `Should Be Equal`
4. Create a text variable
5. Check if it contains a specific word using `Should Contain`
6. Run the test

**Key Concepts:**
- `Should Be Equal` keyword
- `Should Contain` keyword
- Test assertions and validations
- Test failure conditions

---

### Exercise 8: TRY / EXCEPT / FINALLY
**Objective:** Handle exceptions and errors in tests

**Description:** Learn how to use try-except-finally blocks for error handling in Robot Framework.

**Test Steps:**
1. Add a test called `Example Try Except Finally`
2. In the TRY block:
   - Add a message
   - Use `Fail` keyword
3. In the EXCEPT block:
   - Handle the error with a message
4. In the FINALLY block:
   - Add a cleanup message
5. Run the test

**Key Concepts:**
- TRY/EXCEPT/FINALLY block structure
- Exception handling
- Cleanup operations
- The `Fail` keyword

---

### Exercise 9: FOR Loop
**Objective:** Iterate over data using loops

**Description:** Learn how to use FOR loops to iterate over lists in tests.

**Test Steps:**
1. Create a list of names
2. Use a FOR loop to iterate over the list
3. Log each name to the console
4. Run the test

**Key Concepts:**
- FOR loop syntax
- Iterating over lists with `@{list}`
- Loop variables
- Loop execution

---

### Exercise 10: First Template
**Objective:** Use test templates for data-driven testing

**Description:** Learn how to use templates to run the same test with multiple data sets.

**Test Steps:**
1. Add a test called `Greeting Template`
2. Set `[Template]` to `Greet User` keyword
3. Add multiple data rows
4. Run the test

**Key Concepts:**
- Template syntax
- Data-driven testing
- Multiple test executions with different data
- Implicit loop through template rows

---

### Exercise 11: Suite Setup and Suite Teardown
**Objective:** Execute code before and after entire test suite

**Description:** Learn how to set up resources before all tests and clean up after all tests in a suite.

**Test Steps:**
1. Add a `*** Settings ***` section if not present
2. Set Suite Setup to keyword `Setup Suite`
3. Set Suite Teardown to keyword `Teardown Suite`
4. Add two tests:
   - `First Test In Suite`
   - `Second Test In Suite`
5. Create keywords `Setup Suite` and `Teardown Suite`
6. Run the entire file
7. Verify in the log that:
   - Suite Setup executes only once at the beginning
   - Suite Teardown executes only once at the end

**Key Concepts:**
- Suite Setup execution (once at suite start)
- Suite Teardown execution (once at suite end)
- One-time resource initialization
- One-time cleanup operations

---

### Exercise 12: Local Setup and Teardown
**Objective:** Execute code before and after each individual test

**Description:** Learn how to set up resources before and clean up after individual tests.

**Test Steps:**
1. Add a test called `My Test`
2. Use `[Setup]` for test initialization
3. Add regular test steps
4. Use `[Teardown]` for test cleanup
5. Create required keywords
6. Run the test

**Key Concepts:**
- Test-level Setup (runs before each test)
- Test-level Teardown (runs after each test)
- Per-test resource management
- Test isolation

---

### Exercise 13: Import Resource File
**Objective:** Reuse keywords across multiple test files

**Description:** Learn how to organize keywords in separate resource files and import them.

**Test Steps:**
1. Create a file `keywords.resource`
2. Add a keyword `Display Greeting`
3. In your test file, add `Resource` import
4. Call the keyword from the imported file
5. Run the test

**Key Concepts:**
- Resource files (`.resource` extension)
- Keyword organization and reusability
- `Resource` setting for importing
- Shared keyword libraries

---

### Exercise 14: __init__.robot in Test Directory
**Objective:** Set up suite-level initialization for multiple test files

**Description:** Learn how to use `__init__.robot` file to configure settings for all tests in a directory.

**Test Steps:**
1. Create a file `tests/__init__.robot`
2. Set Suite Setup in this file
3. Create another test file in the same directory
4. Run the entire folder
5. Verify Suite Setup executes before all tests

**Key Concepts:**
- `__init__.robot` file purpose
- Directory-level suite configuration
- Suite Setup for multiple test files
- Test organization in directories

---

### Exercise 15: Import Python Library
**Objective:** Use Python functions as Robot Framework keywords

**Description:** Learn how to import Python modules as libraries to extend Robot Framework functionality.

**Test Steps:**
1. Create a file `custom_module.py`
2. Add a function `add_two_numbers`
3. In your test file, import the library with `Library custom_module.py`
4. Call the function as keyword `Add Two Numbers`
5. Verify the result with assertion

**Key Concepts:**
- Python library import
- Converting Python functions to keywords (snake_case → CamelCase)
- Calling Python code from Robot Framework
- Custom library integration

---

### Exercise 16: Passing Variables from Command Line
**Objective:** Pass variables to tests at runtime via command line

**Description:** Learn how to pass variable values to tests when running them, without hardcoding them in test files.

**Test Steps:**
1. Add a test called `Display Environment`
2. Use a variable `${ENV}`
3. Don't set it in the file
4. Run the test passing the variable from CLI:
   ```bash
   uv run python -m robot --variable ENV:production exercises/robot/exercise_16/solution/
   ```
5. Verify the result

**Key Concepts:**
- Command-line variable passing
- Dynamic test configuration
- `--variable` flag usage
- Runtime parameterization

---

## Learning Path

1. **Basics (1-2)**: Test structure and variables
2. **Variable Management (3-4)**: Variable scopes and data types
3. **Keywords (5-6)**: Creating reusable keywords
4. **Assertions (7)**: Validating test results
5. **Control Flow (8-9)**: Exception handling and loops
6. **Advanced Features (10)**: Data-driven testing with templates
7. **Setup & Teardown (11-12)**: Test initialization and cleanup
8. **Organization (13-14)**: Code reusability and structure
9. **Integration (15)**: Python library integration
10. **Configuration (16)**: Runtime parameterization

## Running Tests

### Run all exercises:
```bash
uv run python -m robot exercises/robot/
```

### Run specific exercise (solution):
```bash
uv run python -m robot exercises/robot/exercise_5/solution/
```

### Run practice files:
```bash
uv run python -m robot exercises/robot/exercise_5/practice/
```

### Run with detailed output:
```bash
uv run python -m robot -v exercises/robot/exercise_1/solution/
```

### Generate HTML report:
```bash
uv run python -m robot --outputdir results/ exercises/robot/
```

## Resources

- [Robot Framework Documentation](https://robotframework.org/)
- [Built-in Keywords](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html)
- [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)