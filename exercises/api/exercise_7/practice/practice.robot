*** Settings ***
Resource    resources/user.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Create New Pet
    # TODO: Build bearer authorization headers
    # TODO: Prepare a pet payload as a JSON string
    # TODO: Send POST to /pet with the bearer headers, expect status 200
    # TODO: Extract the pet "id" from the response
    # TODO: Verify the pet exists by sending GET to /pet/${pet_id}, expect 200
