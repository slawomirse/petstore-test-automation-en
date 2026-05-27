*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Update Pet Status And Name
    [Setup]    Create Pet
    VAR    ${update_payload}    {"id": ${pet_id}, "status": "sold", "name": "UpdatedDog"}
    ${headers}=    Create Bearer Headers
    Send PUT Request    endpoint=/pet/    payload=${update_payload}    headers=${headers}    expected_status_code=200
    ${updated}=    Send GET Request    /pet/${pet_id}    expected_status_code=200
    ${status}=    Get Json Field    ${updated}    status
    Should Be Equal    ${status}    sold
