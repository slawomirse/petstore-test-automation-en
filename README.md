# Robot Framework & API Testing Exercises

This repository contains progressive exercises to learn Robot Framework and API test automation, covering everything from basic Robot Framework syntax to building a complete API testing framework.

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

To run API exercises:
```bash
uv run python -m robot exercises/api/exercise_1/solution/
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
│   ├── practice.robot       # Template for student practice
│   └── resources/           # Resource files (where applicable)
└── solution/
    ├── solution.robot       # Complete solution
    └── resources/           # Complete resource files (where applicable)
```
---

# Part 2: Robot Framework Exercises

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

## Part 3L API Exercise Structure

All API exercises live under `exercises/api/`. Every exercise is fully self-contained — each one includes its own `resources/` folder (and a `libraries/` folder where needed), so you can work on any exercise independently.

```
exercises/api/
├── exercise_1/
│   ├── practice/
│   │   └── practice.robot
│   └── solution/
│       └── solution.robot
├── exercise_9/                          # example with local resources
│   ├── practice/
│   │   ├── libraries/
│   │   │   └── payload_builders.py
│   │   ├── resources/
│   │   │   ├── variables.resource
│   │   │   ├── common.resource
│   │   │   ├── user.resource
│   │   │   └── pet.resource
│   │   └── practice.robot
│   └── solution/
│       ├── libraries/
│       │   └── payload_builders.py
│       ├── resources/
│       │   ├── variables.resource
│       │   ├── common.resource
│       │   ├── user.resource
│       │   └── pet.resource
│       └── solution.robot
└── exercise_15/ ...
```

## API Exercises Overview

### Exercise 1: First GET Request
**Objective:** Make your first HTTP request using `RequestsLibrary`

**Description:** Learn how to use `RequestsLibrary` directly in a test file to send a GET request and verify the response status code.

**Test Steps:**
1. Import `RequestsLibrary` and `JSONLibrary`.
2. Define `${BASE_URL}` as a variable.
3. Send a GET request to `${BASE_URL}/pet/1`.
4. Save the response to a variable.
5. Verify the response status code is `200`.

**Key Concepts:**
- `RequestsLibrary` GET keyword
- `expected_status=any` parameter
- `Should Be Equal As Integers` assertion

---

### Exercise 2: variables.resource and common.resource
**Objective:** Extract configuration and reusable keywords into resource files

**Description:** Learn to separate concerns by putting variables in `variables.resource` and reusable HTTP keywords in `common.resource`.

**Test Steps:**
1. Create `resources/variables.resource` with `${BASE_URL}` and `${DEFAULT_PET_ID}`.
2. Create `resources/common.resource` that imports the variables file.
3. Add a `Send GET Request` keyword accepting `endpoint` and `expected_status_code`.
4. Import `common.resource` in your test file and use the keyword.

**Key Concepts:**
- Resource file structure
- `Resource` import in `*** Settings ***`
- Keyword arguments `[Arguments]`
- `RETURN` statement

---

### Exercise 3: Verifying Default Pet Name and JSON Extraction
**Objective:** Read and verify specific fields from a JSON response

**Description:** Add a `Get Json Field` keyword to extract fields from API responses, and use it to verify the default pet's name.

**Test Steps:**
1. Add `${DEFAULT_PET_NAME}` to `variables.resource`.
2. Add a `Get Json Field` keyword to `common.resource` that accepts `response` and `field_name`.
3. Create a test that sends GET to `/pet/${DEFAULT_PET_ID}`.
4. Extract the `name` field using `Get Json Field`.
5. Verify it equals `${DEFAULT_PET_NAME}`.

**Key Concepts:**
- `response.json()['field']` in Robot Framework
- Verifying response body fields
- `Should Be Equal` assertion

---

### Exercise 4: Attempting to Create a Pet as an Unauthenticated User
**Objective:** Test that protected endpoints reject unauthenticated requests

**Description:** Add `Send POST Request` and `Create Json Headers` keywords to `common.resource`, and verify the API returns `401` when no token is provided.

**Test Steps:**
1. Add `Send POST Request` keyword to `common.resource`.
2. Add `Create Json Headers` keyword.
3. Prepare a pet payload JSON string.
4. Send POST to `/pet` without an authorization token.
5. Verify the response status is `401`.

**Key Concepts:**
- POST requests with headers
- `Create Dictionary` keyword
- Testing negative/security scenarios

---

### Exercise 5: Login and Logout Keywords
**Objective:** Authenticate with the API and manage session tokens

**Description:** Create `user.resource` with `Login As Default Admin` and `Logout` keywords. Add admin credentials to `variables.resource`.

**Test Steps:**
1. Add `${DEFAULT_ADMIN_USERNAME}` and `${DEFAULT_ADMIN_PASSWORD}` to `variables.resource`.
2. Create `resources/user.resource`.
3. Implement `Login As Default Admin` using HTTP Basic Auth on `GET /user/login`.
4. Save the token from the response to a SUITE-scope variable.
5. Implement `Logout` that posts to `/user/logout`.
6. Write a test that logs in, verifies the token, and logs out.

**Key Concepts:**
- HTTP Basic Auth with `auth` parameter
- `Set Suite Variable` for SUITE-scoped variables
- `Should Not Be Empty` assertion

---

### Exercise 6: Bearer Token Header Generation
**Objective:** Build authorization headers for protected endpoints

**Description:** Add `Create Bearer Headers` to `common.resource`, which uses the suite-scoped `${token}` to build an `Authorization: Bearer <token>` header dictionary.

**Test Steps:**
1. Add `Create Bearer Headers` keyword to `common.resource`.
2. The keyword should build a dictionary with `Authorization` and `Content-Type` headers.
3. Use it in a test that logs in and constructs the bearer headers.
4. Log the headers to confirm correct format.

**Key Concepts:**
- `Create Dictionary` with multiple entries
- Bearer token authentication format
- Reusing SUITE-scope `${token}`

---

### Exercise 7: Creating a New Pet (Authenticated)
**Objective:** Use authentication to create a new resource via POST

**Description:** Use the complete `common.resource` and `user.resource` (already provided in `resources/`) to write a test that logs in, creates a pet with a POST request, and verifies it was created.

**Test Steps:**
1. Note: `Suite Setup    Login As Default Admin` and `Suite Teardown    Logout` are already provided — observe how they work.
2. Build bearer headers using `Create Bearer Headers`.
3. Prepare a pet payload JSON string.
4. Send POST to `/pet` with bearer headers, expect `200`.
5. Extract the pet `id` from the response and verify it exists with GET `/pet/${pet_id}`.

**Key Concepts:**
- Suite Setup/Teardown (first use)
- Authenticated POST requests
- Chaining GET after POST to verify creation

---

### Exercise 8: Suite Setup and Suite Teardown
**Objective:** Run setup and teardown once for an entire test suite

**Description:** Configure `Suite Setup` to log in before all tests and `Suite Teardown` to log out after all tests. Verify both execute correctly by inspecting the report.

**Test Steps:**
1. Add `Suite Setup    Login As Default Admin` in `*** Settings ***`.
2. Add `Suite Teardown    Logout` in `*** Settings ***`.
3. Add two tests that run within the shared session (e.g. verify a pet exists and check its name).
4. Run the file and verify in the report that Setup/Teardown run only once.

**Key Concepts:**
- `Suite Setup` runs once before all tests
- `Suite Teardown` runs once after all tests
- Shared state (token) across tests

---

### Exercise 9: Keyword for Generating Pet Payloads (pet.resource)
**Objective:** Use a Python library to generate random test data

**Description:** Create `pet.resource` with a `Create Pet` keyword that uses `Build Pet Payload` from `payload_builders.py` to generate a random pet and store its `id` in a TEST-scope variable.

**Test Steps:**
1. Create `resources/pet.resource` that imports `common.resource` and `payload_builders.py`.
2. Implement `Create Pet`: call `Build Pet Payload`, serialize to JSON, save `${pet_id}` with TEST scope, POST to `/pet`, verify with GET.
3. Import `pet.resource` in your test file.
4. Write a test that calls `Create Pet` and verifies `${pet_id}` is greater than `0`.

**Key Concepts:**
- Importing Python libraries with `Library`
- `VAR` with `scope=TEST`
- `Serialize To Json` from `payload_builders`
- `Build Pet Payload` returning a dict

---

### Exercise 10: PUT Keyword Usage
**Objective:** Update a resource using PUT

**Description:** Use `Send PUT Request` from the local `resources/` to update a previously created pet's name and status.

**Test Steps:**
1. Use `[Setup]    Create Pet` to create a pet before the test.
2. Build bearer headers.
3. Prepare an update payload with `id`, `status: "sold"`, `name: "UpdatedDog"`.
4. Send PUT to `/pet/` with the payload, expect `200`.
5. GET the pet and verify `status` equals `sold`.

**Key Concepts:**
- `[Setup]` for test-level setup
- PUT request structure
- `${pet_id}` TEST-scope variable from `Create Pet`

---

### Exercise 11: Update Pet Keyword
**Objective:** Encapsulate PUT logic in a reusable keyword

**Description:** Add an `Update Pet` keyword to `pet.resource` that accepts a payload argument and sends the PUT request using bearer headers.

**Test Steps:**
1. Add `Update Pet` keyword to `pet.resource` with `[Arguments]    ${payload}=${EMPTY}`.
2. Inside: create bearer headers, send PUT to `/pet/`, return the response.
3. In the test, call `Update Pet` with a payload, then GET the pet and verify name and status changed.

**Key Concepts:**
- Default argument values
- Keyword encapsulation
- Verifying multiple fields from response

---

### Exercise 12: DELETE Keyword Usage
**Objective:** Delete a resource and verify it no longer exists

**Description:** Use `Send DELETE Request` from the local `resources/` to delete a pet, then confirm the pet returns `404`.

**Test Steps:**
1. Use `[Setup]    Create Pet` to create a pet.
2. Build bearer headers.
3. Send DELETE to `/pet/${pet_id}`, expect `200`.
4. Send GET to `/pet/${pet_id}`, expect `404`.

**Key Concepts:**
- DELETE requests with authorization headers
- Verifying resource removal with `404`
- Test isolation via `[Setup]`

---

### Exercise 13: Delete Pet Keyword
**Objective:** Encapsulate DELETE logic in a reusable keyword

**Description:** Add a `Delete Pet` keyword to `pet.resource` that sends the DELETE request and verifies the pet is gone.

**Test Steps:**
1. Add `Delete Pet` keyword to `pet.resource`.
2. Inside: create bearer headers, send DELETE `/pet/${pet_id}`, verify GET `/pet/${pet_id}` returns `404`.
3. In the test, call `Delete Pet` and assert the test passes.

**Key Concepts:**
- Keyword with embedded assertions
- POST → DELETE → GET 404 workflow
- Clean pet.resource API

---

### Exercise 14: Verifying the Default User Exists
**Objective:** Test that a known user exists in the system

**Description:** Write a test that queries the user endpoint for the default admin account and verifies the username matches.

**Test Steps:**
1. Send GET to `/user/${DEFAULT_ADMIN_USERNAME}`, expect `200`.
2. Extract the `username` field from the response.
3. Verify it equals `${DEFAULT_ADMIN_USERNAME}`.

**Key Concepts:**
- User endpoint testing
- Data verification from GET response

---

### Exercise 15: Creating a New User and Logging In
**Objective:** Create a new user via API and authenticate as them

**Description:** Add `Create Test User`, `Login As Test User`, and `Create Authenticated Test User` keywords to a new `user.resource`, using `build_user_payload` from `payload_builders.py`.

**Test Steps:**
1. Add `build_user_payload` usage to `Create Test User` keyword.
2. Save `test_username` to a TEST-scope variable.
3. Implement `Login As Test User` using the saved credentials.
4. Implement `Create Authenticated Test User` that calls both.
5. In the test, call `Create Authenticated Test User` and verify `${token}` is not empty.

**Key Concepts:**
- `Build User Payload` for random user generation
- TEST-scope variables for per-test state
- Multi-step keyword composition

---

## Running API Exercises

### Prerequisites: start the Petstore backend

The API tests require the Petstore service to be running. Start it with Docker Compose from the `petstore-own-services/` directory:

```bash
cd ../petstore-own-services
docker compose up -d
```

Then return to this directory before running tests:

```bash
cd ../petstore-test-automation-en
```

### Run a specific exercise solution:
```bash
uv run python -m robot exercises/api/exercise_1/solution/
```

### Run a practice file:
```bash
uv run python -m robot exercises/api/exercise_1/practice/
```

### Run with results saved:
```bash
uv run python -m robot --outputdir results/ exercises/api/exercise_7/solution/
```

## Resources

- [Robot Framework Documentation](https://robotframework.org/)
- [Built-in Keywords](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html)
- [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)