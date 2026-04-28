*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource

*** Keywords ***
Open browser and maximize browser window
    [Documentation]    เปิด browser และขยายให้เต็มจอ 
    [Arguments]    ${url}    ${browser}=chrome
    SeleniumLibrary.Open Browser    url=${url}    browser=${browser}
    SeleniumLibrary.Maximize Browser Window

Wait and click element when ready
    [Documentation]    กดปุ่มที่กำหนดเมื่อปุ่มพร้อมใช้งาน
    [Arguments]    ${button}
    SeleniumLibrary.Wait Until Element Is Enabled    locator=${button}
    SeleniumLibrary.Click Button    locator=${button}

Press escape
    [Documentation]    กดปุ่ม Escape 
    SeleniumLibrary.Press Keys    None    ESCAPE

Press enter
    [Documentation]    กดปุ่ม Enter
    SeleniumLibrary.Press Keys   None    ENTER

Input text to element when ready
    [Documentation]    
    ...    รอจนกว่า element จะพร้อมใช้งาน    
    ...    จากนั้นเพิ่มข้อความลงตาม locator ที่กำหนด
    [Arguments]    ${locator}    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${locator}
    SeleniumLibrary.Input Text    ${locator}    ${text}