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
    # TODO: Add [Teardown] to call Logout If Needed
    # TODO: Open the home page and verify it loaded
    # TODO: Log in as the default user
    # TODO: Navigate to the Browse Pets page
    # TODO: Open the Add New Pet form
    # TODO: Generate random pet data
    # TODO: Fill the pet form with the generated data
    # TODO: Submit the form
    # TODO: Verify the new pet was added successfully
