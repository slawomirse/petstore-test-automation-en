*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Create New Pet Using Keyword
    Create Pet
    Should Be True    ${pet_id} > 0
