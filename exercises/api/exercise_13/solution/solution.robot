*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Delete Pet Using Keyword
    [Setup]    Create Pet
    Delete Pet
