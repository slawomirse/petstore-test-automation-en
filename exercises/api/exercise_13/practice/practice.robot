*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Delete Pet Using Keyword
    [Setup]    Create Pet
    # TODO: Call Delete Pet keyword
    # TODO: Verify the test passes (Delete Pet verifies 404 internally)
