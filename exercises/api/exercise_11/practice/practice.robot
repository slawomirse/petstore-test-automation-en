*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Update Pet Name And Status
    [Setup]    Create Pet
    VAR    ${update_payload}    {"id": ${pet_id}, "status": "sold", "name": "UpdatedName"}
    # TODO: Call Update Pet with the update payload
    # TODO: GET the pet and verify name is "UpdatedName"
    # TODO: Verify status is "sold"
