*** Settings ***
Library     Browser
Resource    home_page.resource

*** Variables ***
${LOGIN_MODAL_USERNAME_INPUT}      xpath=//*[@id='auth-username']
${LOGIN_MODAL_PASSWORD_INPUT}      xpath=//*[@id='auth-password']
${LOGIN_MODAL_SIGN_IN_BUTTON}      xpath=//*[@id='login-form']//button[@type='submit']
${LOGIN_MODAL_ERROR_TOAST}         xpath=//*[contains(@class,'toast')]
${LOGIN_MODAL_SUCCESS_TOAST}       xpath=//*[contains(@class,'toast') and contains(normalize-space(),'Welcome back')]

*** Keywords ***
Open Login Form
    # TODO: Click the HOME_PAGE_LOGIN_BUTTON to open the login modal

Submit Login Form With Credentials
    [Arguments]    ${username}    ${password}
    # TODO: Fill the username input with ${username}
    # TODO: Fill the password input with ${password}
    # TODO: Click the sign-in submit button

Verify Login Error Is Displayed
    # TODO: Get the text from LOGIN_MODAL_ERROR_TOAST
    # TODO: Verify the text contains "Login failed"

Verify Login Success Is Displayed
    # TODO: Get the text from LOGIN_MODAL_SUCCESS_TOAST
    # TODO: Verify the text contains "Welcome back"
