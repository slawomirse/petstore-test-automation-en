*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource
Resource    resources/ui/pages/login_page.resource
Resource    resources/ui/pages/pets_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Delete Pet
    [Setup]    Create Pet
    [Teardown]    Logout If Needed
    Open Pet Details By Name    ${NEW_PET_NAME}
    Delete Pet
    Verify Pet Was Deleted    ${NEW_PET_NAME}
