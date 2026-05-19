*** Variables ***
${KEYWORD_VAR}    ${EMPTY}


*** Test Cases ***
Local Variable Scope
    ${user_name}=    Set Variable    Alice
    Log    Local variable in test: ${user_name}

Test Variable Scope
    Do Something
    Log    Test variable in test: ${KEYWORD_VAR}

Set Suite Variable
    Set Suite Variable    ${SUITE_NAME}    Robot Framework Basics
    Log    Suite variable set: ${SUITE_NAME}

Use Suite Variable
    Log    Suite variable used in another test: ${SUITE_NAME}

*** Keywords ***
Do Something
    VAR   ${KEYWORD_VAR}    Test Scope    scope=TEST
