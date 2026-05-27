*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
# TODO: Define ${BASE_URL} with value http://127.0.0.1:8000

*** Test Cases ***
First GET Request
    # TODO: Send a GET request to ${BASE_URL}/pet/1 using the GET keyword from RequestsLibrary
    # TODO: Verify that response.status_code equals 200
    # TODO: Log the response body to the console
