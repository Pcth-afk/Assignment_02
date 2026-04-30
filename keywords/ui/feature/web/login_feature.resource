*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Open website and login to saucedemo web
    [Documentation]
    ...    เปิดเว็บไซต์ Saucedemo
    ...    ตรวจการโหลดของหน้าเว็บ Login
    ...    กรอก username และ password
    ...    ตรวจสอบการเติม username และ password 
    ...    กดปุ่ม Login เพื่อเข้าสู่หน้า Product
    [Arguments]    ${username}    ${password}    
    common_web.Open browser and maximize browser window    url=${url['saucedemo']}
    login_page.Verify that login page is loaded successfully
    login_page.Input username    username=${username}
    login_page.Input password    password=${password}
    login_page.Click login button