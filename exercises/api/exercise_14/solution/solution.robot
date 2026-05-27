*** Settings ***
Resource    resources/user.resource

*** Test Cases ***
Default Admin User Should Exist
    ${response}=    Send GET Request    /user/${DEFAULT_ADMIN_USERNAME}    expected_status_code=200
    ${username}=    Get Json Field    ${response}    username
    Should Be Equal    ${username}    ${DEFAULT_ADMIN_USERNAME}
