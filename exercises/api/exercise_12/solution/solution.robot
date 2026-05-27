*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Delete Pet Should Succeed
    [Setup]    Create Pet
    ${headers}=    Create Bearer Headers
    Send DELETE Request    endpoint=/pet/${pet_id}    headers=${headers}    expected_status_code=200
    Send GET Request    /pet/${pet_id}    expected_status_code=404
