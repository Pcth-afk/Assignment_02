*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Login to sawg labs with username and password
    [Documentation]    เข้าระบบสู้หน้าเว็บไซต์ด้วย username และ password และกดปุ่ม Login
    [Arguments]    ${usrname}    ${password}
    login_page.Input username    username=${usrname}
    login_page.Input password    password=${password}
    login_page.Click login button