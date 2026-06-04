*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource
Resource    resources/ui/pages/login_page.resource
Resource    resources/ui/pages/pets_page.resource
Resource    resources/ui/pages/orders_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Variables ***
${NEW_ORDER_ID}        ${EMPTY}
${NEW_ORDER_PET_ID}    ${EMPTY}

*** Test Cases ***
E2E: Login, Create Pet, Place Order, Verify Order
    [Teardown]    Logout If Needed
    Open Home Page
    Verify Home Page Is Loaded
    Login As Default User
    Verify User Is Logged In    ${DEFAULT_ADMIN_USERNAME}
    Open Browse Pets Page
    Generate New Pet Data
    Open Add New Pet Form
    Fill New Pet Form    ${NEW_PET_NAME}    ${NEW_PET_STATUS}    ${NEW_PET_CATEGORY_ID}    ${NEW_PET_CATEGORY_NAME}    ${NEW_PET_PHOTO_URL}    ${NEW_PET_TAG}
    Submit New Pet Form
    Verify New Pet Was Added    ${NEW_PET_NAME}
    Place Order For Pet    ${NEW_PET_NAME}
    Open Orders Page
    Lookup Order By Id    ${NEW_ORDER_ID}
    Verify Order Was Created    ${NEW_ORDER_ID}
    Verify Order Is For Pet    ${NEW_ORDER_PET_ID}
