*** Settings ***
Resource    common.resource
Library     ../libraries/payload_builders.py

*** Variables ***
${pet_id}    ${EMPTY}

*** Keywords ***
Create Pet
    [Documentation]    Generates a random pet payload and creates it via POST /pet.
    ...    Saves ${pet_id} to TEST scope for use in other steps.
    ${headers}=    Create Bearer Headers
    # TODO: Call Build Pet Payload to generate a random pet payload dictionary
    # TODO: Serialize the payload dict to a JSON string
    # TODO: Save the pet id from the payload dict to ${pet_id} with TEST scope
    # TODO: Send POST to /pet with bearer headers, expect 200
    # TODO: Verify the pet was created by sending GET to /pet/${pet_id}, expect 200
