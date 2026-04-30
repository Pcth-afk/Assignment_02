*** Settings ***
Resource    ${CURDIR}/../resources/import.resource
Test Teardown    SeleniumLibrary.Close Browser

*** Test Cases ***
SDT01_TS001_TC001 - ทดสอบซื้อสินค้าให้สำเร็จ 1 ชิ้น
    [Documentation]    
    ...    1. เข้าเว็บไซต์ saucedemo 
    ...    2. กรอก username   
    ...    3. กรอก password 
    ...    4. กดปุ่ม Login
    ...    5. กดปุ่ม Add to cart ที่สินค้าที่ 1
    ...    6. กดปุ่มตระกร้าสินค้า
    ...    7. กดปุ่ม Checkout
    ...    8. กรอก First name 
    ...    9. กรอก Last name 
    ...    10. กรอก Zip/Postal code 
    ...    11. กดปุ่ม Continue
    ...    12. กดปุ่ม Fisnish
    [Tags]    function_id:WEB_SDT_01    test_scenario:TS_001    test_id:SDT01_TS001_TC001    function_name:ทดสอบซื้อสินค้าให้สำเร็จ
    # [Step 1-4] - เปิดเว็บไซต์กรอก username password และกด Login เพื่อเข้าสู่หน้า Product
    login_feature.Open website and login to saucedemo web    usrname=${user_info['user_name']['standard']}    password=${user_info['password']}
    
    # [Step 5] - กดปุ่ม Add to cart ที่สินค้าที่ 1
    product_page.Click add to cart button by product name    product_name=${product_add_to_cart_id['product_1']}
    
    # [Step 6] - กดปุ่มตระกร้าสินค้า
    product_page.Click shopping cart button
    
    # [Step 7] - กดปุ่ม Checkout
    your_cart_page.Click checkout button
   
    # [Step 8-10] - กรอก firstname lastname postalcode และกดปุ่ม Continue เพื่อเข้าสู้หน้า Checkout: Overview
    checkout_your_information_feature.Input shipping address details    firstname=${shipping_address['first_name']}    
    ...    lastname=${shipping_address['last_name']}    
    ...    postalcode=${shipping_address['postal_code']}
    
    # [Step 11-12] - กดปุ่ม Fisnish เพื่อเข้าสู้หน้า Checkout: Complete!
    checkout_overview_page.Click finish button
    checkout_overview_page.Verify that product is purchased completely