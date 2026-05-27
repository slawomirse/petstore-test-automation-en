*** Settings ***
Resource    resources/user.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Create New Pet
    ${headers}=    Create Bearer Headers
    ${payload}=    Set Variable    {"id": 111222, "name": "TestDog", "status": "available", "photoUrls": ["http://example.com/photo.jpg"]}
    ${response}=    Send POST Request    endpoint=/pet    payload=${payload}    headers=${headers}    expected_status_code=200
    ${pet_id}=    Get Json Field    ${response}    id
    Send GET Request    /pet/${pet_id}    expected_status_code=200
