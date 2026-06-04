*** Settings ***
Library     Browser
Library     ../../../libraries/order_parser.py
Resource    pets_page.resource

*** Variables ***
${PET_DETAIL_ORDER_BUTTON}         xpath=//*[@id='detail-order-btn']
${ORDER_MODAL_QUANTITY_INPUT}      xpath=//*[@id='of-qty']
${ORDER_MODAL_STATUS_SELECT}       xpath=//*[@id='of-status']
${ORDER_MODAL_SUBMIT_BUTTON}       xpath=//*[@id='order-form']//button[@type='submit']
${ORDER_SUCCESS_TOAST}             xpath=//*[contains(@class,'toast') and contains(normalize-space(),'Order #') and contains(normalize-space(),'placed')]
${ORDERS_NAV_LINK}                 xpath=//*[@data-page='orders']
${ORDERS_PAGE_TITLE}               xpath=//*[@id='page-orders']//h1[normalize-space()='My Orders']
${ORDERS_LOOKUP_ID_INPUT}          xpath=//*[@id='lookup-order-id']
${ORDERS_LOOKUP_BUTTON}            xpath=//*[@id='btn-lookup-order']
${PET_DETAIL_ID_VALUE}             xpath=//*[@id='pet-detail-content']//dt[normalize-space()='ID']/following-sibling::dd[1]
${ORDERS_LIST_HEADING}             xpath=//*[@id='orders-list']//h3
${ORDERS_LIST_PET_ID_LINE}         xpath=//*[@id='orders-list']//span[contains(normalize-space(),'Pet ID:')]
${NEW_ORDER_ID}                    ${EMPTY}
${NEW_ORDER_PET_ID}                ${EMPTY}

*** Keywords ***
Place Order For Pet
    [Arguments]    ${pet_name}    ${quantity}=1    ${status}=placed
    # TODO: Open the pet details by name
    # TODO: Get the pet ID from PET_DETAIL_ID_VALUE and store in NEW_ORDER_PET_ID (TEST scope)
    # TODO: Click the PET_DETAIL_ORDER_BUTTON to open the order form
    # TODO: Fill the quantity input
    # TODO: Select the order status
    # TODO: Click the submit button
    # TODO: Get the success toast text and verify it contains "Order #"
    # TODO: Parse the order ID from the toast using Parse Order Id From Toast
    # TODO: Store the order ID in NEW_ORDER_ID (TEST scope)
    # TODO: Wait for the orders page title to be visible

Open Orders Page
    # TODO: Click the ORDERS_NAV_LINK
    # TODO: Wait for ORDERS_PAGE_TITLE to be visible

Lookup Order By Id
    [Arguments]    ${order_id}
    # TODO: Fill the ORDERS_LOOKUP_ID_INPUT with the order ID
    # TODO: Click the ORDERS_LOOKUP_BUTTON

Verify Order Was Created
    [Arguments]    ${order_id}
    # TODO: Get the text from ORDERS_LIST_HEADING
    # TODO: Verify it equals "Order #${order_id}"

Verify Order Is For Pet
    [Arguments]    ${pet_id}
    # TODO: Get the text from ORDERS_LIST_PET_ID_LINE
    # TODO: Verify it contains the pet ID
