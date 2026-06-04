*** Settings ***
Library     Browser
Resource    ../../variables.resource

*** Variables ***
${HOME_PAGE_HERO_TITLE}             xpath=//*[contains(@class,'hero-text')]//h1
${HOME_PAGE_USER_LABEL}             xpath=//*[@id='user-badge']
${HOME_PAGE_LOGIN_BUTTON}           xpath=//*[@id='btn-auth']
${HOME_PAGE_DEFAULT_PET_CARD}       xpath=//*[@id='featured-pets']//*[@data-id='${DEFAULT_PET_ID}']
${HOME_PAGE_DEFAULT_PET_NAME}       xpath=//*[@id='featured-pets']//*[@data-id='${DEFAULT_PET_ID}']//h3

*** Keywords ***
# Keywords will be added in later exercises
