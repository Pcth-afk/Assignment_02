*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Input shipping address details
    [Documentation]    
    ...    กรอกชื่อ Firsname, Lastname และ Postal code
    ...    กดปุ่ม Continue เพื่อไปยังหน้า Checkout: Overview
    [Arguments]    ${firstname}    ${lastname}    ${postalcode}
    checkout_your_information_page.Input firstname    firstname=${firstname}
    checkout_your_information_page.Input lastname    lastname=${lastname}
    checkout_your_information_page.Input postal code    postalcode=${postalcode}
    checkout_your_information_page.Click continue button in checkout page