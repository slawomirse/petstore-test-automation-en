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
    # TODO: Add [Teardown] to call Logout If Needed
    # TODO: Open the home page and verify it loaded
    # TODO: Log in as the default user and verify the user is logged in
    # TODO: Navigate to Browse Pets page
    # TODO: Generate new pet data
    # TODO: Open the add pet form, fill it and submit
    # TODO: Verify the new pet was added
    # TODO: Place an order for the new pet
    # TODO: Navigate to the Orders page
    # TODO: Look up the order by its ID
    # TODO: Verify the order was created correctly
    # TODO: Verify the order is linked to the correct pet ID
