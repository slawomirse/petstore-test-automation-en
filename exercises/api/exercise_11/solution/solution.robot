*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Update Pet Name And Status
    [Setup]    Create Pet
    VAR    ${update_payload}    {"id": ${pet_id}, "status": "sold", "name": "UpdatedName"}
    Update Pet    payload=${update_payload}
    ${updated}=    Send GET Request    /pet/${pet_id}    expected_status_code=200
    ${name}=    Get Json Field    ${updated}    name
    Should Be Equal    ${name}    UpdatedName
    ${status}=    Get Json Field    ${updated}    status
    Should Be Equal    ${status}    sold
