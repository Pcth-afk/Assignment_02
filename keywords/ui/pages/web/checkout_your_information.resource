*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Input text in firstname
    [Documentation]    สำหรับกรอกชื่อต้นลงในช่อง firstname 
    [Arguments]    ${firstname}
    common_web.Input text to element when ready    locator=${checkout_your_information_page_locator['txt_first_name']}    text=${firstname}

Input text in lastname
    [Documentation]    สำหรับกรอกนามสกุลลงในช่อง lastname 
    [Arguments]    ${lastname}
    common_web.Input text to element when ready    locator=${checkout_your_information_page_locator['txt_last_name']}    text=${lastname}

Input text in postalcode
    [Documentation]    สำหรับกรอกรหัสไปรษณีย์ลงในช่อง postal code 
    [Arguments]    ${postalcode}
    common_web.Input text to element when ready    locator=${checkout_your_information_page_locator['txt_postal_code']}    text=${postalcode}

Click continue in checkout page
    [Documentation]    กดปุ่ม Continue ในหน้า Checkout: Your Information
    common_web.Wait and click element when ready    locator=${checkout_your_information_page_locator['btn_continue']}