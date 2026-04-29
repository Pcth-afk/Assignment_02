*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click login button
    [Documentation]    ใช้สำหรับคลิกปุ่ม Login ในหน้า Login ของเว็บไซต์
    common_web.Wait and click element when ready    locator=${login_page_locator['btn_login']}

Input username
    [Documentation]    ใช้สำหรับกรอกชื่อ username 
    [Arguments]    ${username}
    common_web.Input text to element when ready    locator=${login_page_locator['lbl_username']}    text=${username}

Input password
    [Documentation]    ใช้สำหรับกรอกรหัสผ่าน 
    [Arguments]    ${password}
    common_web.Input text to element when ready    locator=${login_page_locator['lbl_password']}    text=${password}