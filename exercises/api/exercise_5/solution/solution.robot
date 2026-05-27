*** Settings ***
Resource    resources/user.resource

*** Test Cases ***
Admin Login And Logout Should Succeed
    Login As Default Admin
    Should Not Be Empty    ${token}
    Logout
