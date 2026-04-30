*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click login button
    [Documentation]    ใช้สำหรับคลิกปุ่ม Login ในหน้า Login ของเว็บไซต์
    common_web.Wait and click element when ready    locator=${login_locator['btn_login']}

Input username
    [Documentation]    ใช้สำหรับกรอกชื่อ username 
    [Arguments]    ${username}
    common_web.Input text to element when ready    locator=${login_locator['txt_username']}    text=${username}

Input password
    [Documentation]    ใช้สำหรับกรอกรหัสผ่าน 
    [Arguments]    ${password}
    common_web.Input text to element when ready    locator=${login_locator['txt_password']}    text=${password}

Verify that login page is loaded successfully
    [Documentation]    ตรวจสอบว่าหน้าเว็บ Login โหลดเสร็จสมบูรณ์   
    SeleniumLibrary.Page Should Contain Element    locator=${login_locator['btn_login']}

Verify that error message is appeared correctly
    [Documentation]    ตรวจสอบข้อความ 'Epic sadface: Sorry, this user has been locked out.' ปรากฏขึ้นเมื่อ Login ด้วย username ที่ถูกบล็อค
    SeleniumLibrary.Page Should Contain Element    locator=${login_locator['txt_error_login']}