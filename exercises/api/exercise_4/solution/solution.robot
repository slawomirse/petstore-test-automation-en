*** Settings ***
Resource    resources/common.resource

*** Test Cases ***
Creating Pet As Unauthenticated User Should Return 401
    ${headers}=    Create Json Headers
    ${payload}=    Set Variable    {"id": 99999, "name": "TestDog", "status": "available", "photoUrls": []}
    Send POST Request    endpoint=/pet    payload=${payload}    headers=${headers}    expected_status_code=401
