*** Settings ***
Resource    ${CURDIR}/../resources/import.resource
Test Teardown    SeleniumLibrary.Close Browser

*** Test Cases ***
SDT01_TS003_TC001 - ทดสอบการทำงานของปุ่ม Logout เมื่อกดแล้วผลลัพธ์ที่ต้องกลับไปหน้า Login
    [Documentation]
    ...    1. เข้าเว็บไซต์ saucedemo 
    ...    2. กรอก username   
    ...    3. กรอก password
    ...    4. กดปุ่ม Login 
    ...    5. กดปุ่มแท็บเมนู
    ...    6. กดปุ่ม Logout
    [Tags]    function_id:WEB_SDT_01    test_scenario:TS_003    test_id:SDT01_TS003_TC001    function_name:ทดสอบการ login และ logout
    # [Step 1] - เข้าเว็บไซต์ saucedemo ในโหมดไม่ระบุตัวตน
    common_web.Open browser and maximize browser window    url=${url['test_web']}
    
    # [Step 2-4] - กรอก username password และกด Login เพื่อเข้าสู่หน้ารายการสินค้า
    login_feature.Login to sawg labs with username and password    usrname=${user_info['user_name']['standard']}    password=${user_info['password']}

    # [Step 5] - กดปุ่มแท็บเมนู
    product_page.Click open menu

    # [Step 6] - กดปุ่ม Logout
    product_page.Click logout in menu
    