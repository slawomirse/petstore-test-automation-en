*** Settings ***
Library    Browser
Library    ../../../libraries/payload_builders.py
Resource    home_page.resource

*** Variables ***
${REGISTER_TAB_BUTTON}         xpath=//*[@data-tab='register']
${REGISTER_USERNAME_INPUT}     xpath=//*[@id='reg-username']
${REGISTER_EMAIL_INPUT}        xpath=//*[@id='reg-email']
${REGISTER_FIRSTNAME_INPUT}    xpath=//*[@id='reg-firstname']
${REGISTER_LASTNAME_INPUT}     xpath=//*[@id='reg-lastname']
${REGISTER_PASSWORD_INPUT}     xpath=//*[@id='reg-password']
${REGISTER_PHONE_INPUT}        xpath=//*[@id='reg-phone']
${REGISTER_SUBMIT_BUTTON}      xpath=//*[@id='register-form']//button[@type='submit']
${REGISTER_SUCCESS_TOAST}      xpath=//*[contains(@class,'toast') and contains(normalize-space(),'Account created')]

*** Keywords ***
Open Register Form
    # TODO: Click the HOME_PAGE_LOGIN_BUTTON to open the auth modal
    # TODO: Click the REGISTER_TAB_BUTTON to switch to the registration tab

Fill Register Form
    [Arguments]    ${username}    ${email}    ${first_name}    ${last_name}    ${password}    ${phone}
    # TODO: Fill each register form field with the corresponding argument

Submit Register Form
    # TODO: Click the REGISTER_SUBMIT_BUTTON

Verify Registration Success
    # TODO: Get the text from REGISTER_SUCCESS_TOAST
    # TODO: Verify the text contains "Account created"

Generate New User Data
    # TODO: Use Generate Random Username from payload_builders.py
    # TODO: Use Generate Random First Name
    # TODO: Use Generate Random Last Name
    # TODO: Use Generate Random Phone
    # TODO: Set TEST-scope variables: NEW_USER_USERNAME, NEW_USER_FIRST_NAME, NEW_USER_LAST_NAME,
    #       NEW_USER_EMAIL (username@example.com), NEW_USER_PHONE, NEW_USER_PASSWORD (Test1234)
