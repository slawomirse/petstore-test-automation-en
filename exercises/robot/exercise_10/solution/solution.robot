*** Test Cases ***
Greeting Template
    [Template]    Greet User
    Alice
    Bob
    Charlie

*** Keywords ***
Greet User
    [Arguments]    ${name}
    Log To Console    Hello, ${name}!
