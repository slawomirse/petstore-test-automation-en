*** Settings ***
Resource    resources/common.resource

*** Test Cases ***
Default Pet Should Exist
    Send GET Request    /pet/${DEFAULT_PET_ID}    expected_status_code=200
