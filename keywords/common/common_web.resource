*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource

*** Keywords ***
Open browser and maximize browser window
    [Documentation]    เปิด browser และขยายให้เต็มจอ 
    [Arguments]    ${url}    ${browser}=chrome
    SeleniumLibrary.Open Browser    url=${url}    browser=${browser}
    SeleniumLibrary.Maximize Browser Window

Click button when button is ready
    [Documentation]    กดปุ่มที่กำหนดเมื่อปุ่มพร้อมใช้งาน
    [Arguments]    ${button}
    SeleniumLibrary.Wait Until Element Is Enabled    locator=${button}
    SeleniumLibrary.Click Button    locator=${button}

Click element when element is ready
    [Documentation]    กด element ที่กำหนดเมื่อ element พร้อมใช้งาน
    [Arguments]    ${element}
    SeleniumLibrary.Wait Until Element Is Enabled    locator=${element}
    SeleniumLibrary.Scroll Element Into View    locator=${element}
    SeleniumLibrary.Click element    locator=${element}

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

Check text in page
    [Documentation]    
    ...    ตรวจสอบ text ในหน้า page
    ...    หากเจอ text จะส่งข้อความ 'Text found'
    ...    หากไม่เจอ text จะส่งข้อความ 'Text not found'
    [Arguments]    ${text}   
    ${found_text} =    BuiltIn.Run Keyword And Return Status    Seleniumlibrary.Page Should Contain
    ...    text=${text}
    IF    ${found_text}
        BuiltIn.Log    message=Text found    level=INFO    console=Yes
    ELSE
        BuiltIn.Log    message=Text not found    level=ERROR    console=Yes
    END
    
Check element in page
    [Documentation]    
    ...    ตรวจสอบ element ในหน้า page
    ...    หากเจอ element จะส่งข้อความ 'Element found'
    ...    หากไม่เจอ element จะส่งข้อความ 'Element not found'
    [Arguments]    ${locator}
    SeleniumLibrary.Page Should Contain Element    locator=${locator}
    ${found_element} =    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Page Should Contain Element    
    ...    locator=${locator}
    IF    ${found_element}
        BuiltIn.Log    message=Element found    level=INFO    console=Yes
    ELSE
        BuiltIn.Log    message=Element not found    level=ERROR    console=Yes
    END   