*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Input firstname lastname and postalcode
    [Documentation]    กรอกชื่อ-นามสกุล รหัสไปรษณีย์ในหน้าและกดปุ่ม Continue
    [Arguments]    ${firstname}    ${lastname}    ${postalcode}
    checkout_your_information_page.Input firstname    firstname=${firstname}
    checkout_your_information_page.Input lastname    lastname=${lastname}
    checkout_your_information_page.Input postal code    postalcode=${postalcode}
    checkout_your_information_page.Click continue button in checkout page