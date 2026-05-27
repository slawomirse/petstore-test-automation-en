*** Settings ***
Resource    resources/user.resource

# TODO: Add Suite Setup that calls Login As Default Admin
# TODO: Add Suite Teardown that calls Logout

*** Test Cases ***
Default Pet Should Exist
    Send GET Request    /pet/${DEFAULT_PET_ID}    expected_status_code=200

Default Pet Should Have Correct Name
    ${response}=    Send GET Request    /pet/${DEFAULT_PET_ID}    expected_status_code=200
    ${pet_name}=    Get Json Field    ${response}    name
    Should Be Equal    ${pet_name}    ${DEFAULT_PET_NAME}
