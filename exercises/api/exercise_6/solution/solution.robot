*** Settings ***
Resource    resources/user.resource

*** Test Cases ***
Bearer Headers Should Be Created After Login
    Login As Default Admin
    ${headers}=    Create Bearer Headers
    Log    ${headers}
    Should Not Be Empty    ${headers['Authorization']}
    Logout
