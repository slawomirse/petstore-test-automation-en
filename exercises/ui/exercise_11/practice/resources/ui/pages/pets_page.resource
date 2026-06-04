*** Settings ***
Library    Browser
Library    ../../../libraries/payload_builders.py
Resource    home_page.resource
Resource    login_page.resource

*** Variables ***
${BROWSE_PETS_NAV_LINK}          xpath=//*[@data-page='pets']
${BROWSE_PETS_PAGE_TITLE}        xpath=//*[@id='page-pets']//h1[normalize-space()='Browse Pets']
${ADD_NEW_PET_BUTTON}            xpath=//*[@id='btn-add-pet']
${PET_FORM_NAME_INPUT}           xpath=//*[@id='pf-name']
${PET_FORM_STATUS_SELECT}        xpath=//*[@id='pf-status']
${PET_FORM_CATEGORY_ID_INPUT}    xpath=//*[@id='pf-cat-id']
${PET_FORM_CATEGORY_NAME_INPUT}  xpath=//*[@id='pf-cat-name']
${PET_FORM_PHOTO_URL_INPUT}      xpath=//*[@id='pf-photo']
${PET_FORM_TAG_INPUT}            xpath=//*[@id='pf-tag']
${PET_FORM_SAVE_BUTTON}          xpath=//*[@id='pet-form']//button[@type='submit']
${PET_CREATE_SUCCESS_TOAST}      xpath=//*[contains(@class,'toast') and contains(normalize-space(),'Pet created')]
${NEW_PET_NAME}                  ${EMPTY}
${NEW_PET_STATUS}                ${EMPTY}
${NEW_PET_CATEGORY_ID}           ${EMPTY}
${NEW_PET_CATEGORY_NAME}         ${EMPTY}
${NEW_PET_PHOTO_URL}             ${EMPTY}
${NEW_PET_TAG}                   ${EMPTY}

*** Keywords ***
Open Browse Pets Page
    # TODO: Click the BROWSE_PETS_NAV_LINK
    # TODO: Wait for BROWSE_PETS_PAGE_TITLE to be visible

Open Add New Pet Form
    # TODO: Click the ADD_NEW_PET_BUTTON
    # TODO: Wait for PET_FORM_SAVE_BUTTON to be visible

Generate New Pet Data
    # TODO: Use Generate Random Dog Name with prefix "UiPet" to get pet name
    # TODO: Build a photo URL from the pet name
    # TODO: Set TEST-scope variables: NEW_PET_NAME, NEW_PET_STATUS (available),
    #       NEW_PET_CATEGORY_ID (1), NEW_PET_CATEGORY_NAME (dog),
    #       NEW_PET_PHOTO_URL, NEW_PET_TAG (ui-test)

Fill New Pet Form
    [Arguments]    ${name}    ${status}    ${category_id}    ${category_name}    ${photo_url}    ${tag}
    # TODO: Fill each form field with the corresponding argument
    # Hint: Use Fill Text for text inputs and Select Options By for the status dropdown

Submit New Pet Form
    # TODO: Click the PET_FORM_SAVE_BUTTON

Verify New Pet Was Added
    [Arguments]    ${pet_name}
    # TODO: Get the text from PET_CREATE_SUCCESS_TOAST
    # TODO: Verify the toast contains "Pet created"
    # TODO: Wait for the pet card with the given name to be visible in the grid
