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
    # TODO: Add [Setup] to call Create Pet (creates and logs in with a new pet before the test)
    # TODO: Add [Teardown] to call Logout If Needed
    # TODO: Open the pet details by the new pet name
    # TODO: Open the edit pet form
    # TODO: Generate updated pet data
    # TODO: Fill the form with updated data
    # TODO: Submit the form
    # TODO: Verify the pet was updated with the new name
