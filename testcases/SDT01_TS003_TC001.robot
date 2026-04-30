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
    # [Step 1-4] - กรอก username password และกด Login เพื่อเข้าสู่หน้ารายการสินค้า
    login_feature.Open website and login to saucedemo web    username=${user_info['user_name']['standard']}    password=${user_info['password']}
    
    # [Expected 4] - ตรวจสอบหน้า Product ว่าโหลดเสร็จสมบูรณ์
    product_page.Verify that product page is loaded successfully

    # [Step 5] - กดปุ่มแท็บเมนู
    common_web.Click open menu

    # [Expected 5] - ตวรจสอบหน้า Product แสดงแท็บเมนู
    common_web.Verify that tab menu is loaded successfully

    # [Step 6] - กดปุ่ม Logout
    tab_menu_page.Click logout menu

    #[Expected 6] - ตวรจสอบหลังจากกดปุ่ม Logout แล้วกลับมาหน้า Login
    login_page.Verify that login page is loaded successfully
    