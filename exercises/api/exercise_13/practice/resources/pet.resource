*** Settings ***
Resource    common.resource
Library     ../libraries/payload_builders.py

*** Variables ***
${pet_id}    ${EMPTY}

*** Keywords ***
Create Pet
    ${headers}=    Create Bearer Headers
    ${payload}=    Build Pet Payload
    ${pet_body}=    Serialize To Json    ${payload}
    VAR    ${pet_id}    ${payload['id']}    scope=TEST
    Send POST Request    endpoint=/pet    payload=${pet_body}    headers=${headers}    expected_status_code=200
    Send GET Request    /pet/${pet_id}    expected_status_code=200

Update Pet
    [Arguments]    ${payload}=${EMPTY}
    ${headers}=    Create Bearer Headers
    ${response}=    Send PUT Request    /pet/    payload=${payload}    headers=${headers}    expected_status_code=200
    RETURN    ${response}

Delete Pet
    # TODO: Create bearer headers
    # TODO: Send DELETE to /pet/${pet_id} with headers, expect 200
    # TODO: Verify the pet is gone by sending GET to /pet/${pet_id}, expect 404
    # TODO: Return the response
