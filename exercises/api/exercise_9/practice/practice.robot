*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Create New Pet Using Keyword
    # TODO: Call Create Pet keyword
    # TODO: Verify ${pet_id} is greater than 0
