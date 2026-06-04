*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource
Resource    resources/ui/pages/login_page.resource
Resource    resources/ui/pages/pets_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Add New Pet
    [Teardown]    Logout If Needed
    Open Home Page
    Verify Home Page Is Loaded
    Login As Default User
    Open Browse Pets Page
    Open Add New Pet Form
    Generate New Pet Data
    Fill New Pet Form    ${NEW_PET_NAME}    ${NEW_PET_STATUS}    ${NEW_PET_CATEGORY_ID}    ${NEW_PET_CATEGORY_NAME}    ${NEW_PET_PHOTO_URL}    ${NEW_PET_TAG}
    Submit New Pet Form
    Verify New Pet Was Added    ${NEW_PET_NAME}

Update Pet
    [Setup]    Create Pet
    [Teardown]    Logout If Needed
    Open Pet Details By Name    ${NEW_PET_NAME}
    Open Edit Pet Form
    Generate Updated Pet Data
    Fill New Pet Form    ${UPDATED_PET_NAME}    ${UPDATED_PET_STATUS}    ${UPDATED_PET_CATEGORY_ID}    ${UPDATED_PET_CATEGORY_NAME}    ${UPDATED_PET_PHOTO_URL}    ${UPDATED_PET_TAG}
    Submit New Pet Form
    Verify Pet Was Updated    ${UPDATED_PET_NAME}

Delete Pet
    # TODO: Add [Setup] to call Create Pet (creates and logs in with a new pet before the test)
    # TODO: Add [Teardown] to call Logout If Needed
    # TODO: Open the pet details by the new pet name
    # TODO: Call the Delete Pet keyword
    # TODO: Verify the pet was deleted
