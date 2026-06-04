*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource
Resource    resources/ui/pages/login_page.resource
Resource    resources/ui/pages/pets_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Update Pet
    [Setup]    Create Pet
    [Teardown]    Logout If Needed
    Open Pet Details By Name    ${NEW_PET_NAME}
    Open Edit Pet Form
    Generate Updated Pet Data
    Fill New Pet Form    ${UPDATED_PET_NAME}    ${UPDATED_PET_STATUS}    ${UPDATED_PET_CATEGORY_ID}    ${UPDATED_PET_CATEGORY_NAME}    ${UPDATED_PET_PHOTO_URL}    ${UPDATED_PET_TAG}
    Submit New Pet Form
    Verify Pet Was Updated    ${UPDATED_PET_NAME}
