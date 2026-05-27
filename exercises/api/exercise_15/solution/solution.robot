*** Settings ***
Resource    resources/user.resource

*** Test Cases ***
Create And Login New User
    Create Authenticated Test User
    Should Not Be Empty    ${token}
    Should Not Be Empty    ${test_username}
