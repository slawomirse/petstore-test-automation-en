*** Settings ***
Resource    resources/common.resource

*** Test Cases ***
Default Pet Should Exist
    Send GET Request    /pet/${DEFAULT_PET_ID}    expected_status_code=200

Default Pet Should Have Correct Name
    # TODO: Send GET request to /pet/${DEFAULT_PET_ID} and save the response
    # TODO: Use Get Json Field to extract the "name" field
    # TODO: Verify the name equals ${DEFAULT_PET_NAME}
