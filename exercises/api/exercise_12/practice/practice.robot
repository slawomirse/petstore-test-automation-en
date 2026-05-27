*** Settings ***
Resource    resources/user.resource
Resource    resources/pet.resource

Suite Setup    Login As Default Admin
Suite Teardown    Logout

*** Test Cases ***
Delete Pet Should Succeed
    [Setup]    Create Pet
    # TODO: Create bearer headers
    # TODO: Send DELETE to /pet/${pet_id} with headers, expect status 200
    # TODO: Verify the pet no longer exists (GET should return 404)
