*** Settings ***
Resource    ${CURDIR}/../resources/import.resource
Test Teardown    SeleniumLibrary.Close Browser

*** Test Cases ***
SDT01_TS004_TC001 - ทดสอบการ Login ด้วยบัญชีที่ถูกล็อคไว้ให้ระบบแจ้งเตือนว่า 'Epic sadface: Sorry, this user has been locked out.'
    [Documentation]
    ...    1. เข้าเว็บไซต์ saucedemo 
    ...    2. กรอก username   
    ...    3. กรอก password
    ...    4. กดปุ่ม Login 
    [Tags]    function_id:WEB_SDT_01    test_scenario:TS_004    test_id:SDT01_TS004_TC001    function_name:ทดสอบการ login ด้วย user ที่ไม่ถูกต้อง
    # [Step 1-4] - กรอก username password และกด Login เพื่อเข้าสู่หน้ารายการสินค้า
    login_feature.Open website and login to saucedemo web    username=${user_info['user_name']['locked']}    password=${user_info['password']}

    # [Expected 4] - หลังจากกด Login จะแจ้งเตือน 'Epic sadface: Sorry, this user has been locked out.'
    login_page.Verify that error message is appeared correctly