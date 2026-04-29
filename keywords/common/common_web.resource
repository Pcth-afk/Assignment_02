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
    [Arguments]    ${locator}
    SeleniumLibrary.Wait Until Element Is Enabled    locator=${locator}
    SeleniumLibrary.Click Element    locator=${locator}

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

Replace locator with target text
    [Documentation]
    ...    ใช้สำหรับแทนค่าข้อความใน locator แบบ dynamic
    ...    โดยจะนำข้อความที่ส่งเข้ามา \${replace_string}
    ...    ไปแทนที่ placeholder ใน locator
    ...    placeholder ที่ใช้ใน locator คือ
    ...    \***replace***
    ...    การทำงาน
    ...    1. รับค่า locator ที่มี placeholder \***replace***
    ...    2. นำค่า \${replace_string} ไปแทนที่ placeholder ใน locator
    ...    3. คืนค่า locator ใหม่ที่ถูกแทนค่าแล้ว
    ...    Example:
    ...    locator เดิม:
    ...    //button[text()='***replace***']
    ...    การใช้งาน:
    ...    | \${locator}= | Replace locator with target text | //button[text()='***replace***'] | Submit |
    ...    ผลลัพธ์:
    ...    //button[text()='Submit']
    ...    Parameter:
    ...    \${locator}           locator ที่ต้องการแทนค่า
    ...    \${replace_string}    ข้อความที่ต้องการนำมาแทนที่ placeholder
    ...    Return:
    ...    \${new_locator}    locator ใหม่หลังจากแทนค่าแล้ว
    [Arguments]    ${locator}    ${replace_string}
    ${new_locator}=    String.Replace String    ${locator}    ***replace***     ${replace_string}
    RETURN    ${new_locator}