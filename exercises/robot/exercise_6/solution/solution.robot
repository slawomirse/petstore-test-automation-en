*** Test Cases ***
Greeting
    Greet User    Alice

*** Keywords ***
Greet User
    [Arguments]    ${name}
    Log To Console    Hello, ${name}!
