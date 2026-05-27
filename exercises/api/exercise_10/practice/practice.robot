*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Update Pet Status And Name
    [Setup]    Create Pet
    # TODO: Prepare the update payload containing the pet id, new status and new name
    # TODO: Create bearer headers
    # TODO: Send PUT to /pet/ with the update payload and headers, expect 200
    # TODO: GET the pet and verify its status is now "sold"
