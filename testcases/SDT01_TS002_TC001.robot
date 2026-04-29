*** Settings ***
Resource    ${CURDIR}/../resources/import.resource

*** Test Cases ***
SDT01_TS002_TC001 - เช็คจำนวนสินค้าที่กดซื้อไปและเมื่อกดลบสินค้าในตระกร้า ในตะกร้าต้องไม่มีสินค้าเหลืออยู่
    [Documentation]
    ...    1. เข้าเว็บไซต์ saucedemo 
    ...    2. กรอก username   
    ...    3. กรอก password 
    ...    4. กดปุ่ม Login
    ...    5. กดปุ่ม Add to cart ที่สินค้าที่ 1
    ...    6. กดปุ่ม Add to cart ที่สินค้าที่ 2
    ...    7. กดปุ่มตระกร้าสินค้า
    ...    8. กดปุ่ม Remove ที่สินค้าที่ 1
    ...    9. กดปุ่ม Remove ที่สินค้าที่ 2
    [Tags]    function_id:WEB_SDT_01    test_scenario:TS_002    test_id:SDT01_TS002_TC001    function_name:ทดสอบการลบสินค้าในตะกร้า
    # [Step 1] - เข้าเว็บไซต์ saucedemo 
    common_web.Open browser and maximize browser window    url=${url['test_web']}

    # [Step 2-4] - กรอก username password และกด Login เพื่อเข้าสู่หน้ารายการสินค้า
    login_feature.Login to sawg labs with username and password    usrname=${user_info['user_name']['standard']}    password=${user_info['password']}
    
    # [Step 5] - กดปุ่ม Add to cart ที่สินค้าที่ 1
    product_page.Click add to cart button by product name    product_name=${product_add_to_cart_id['product_1']}

    # [Step 6] - กดปุ่ม Add to cart ที่สินค้าที่ 2
    product_page.Click add to cart button by product name    product_name=${product_add_to_cart_id['product_2']}

    # [Step 7] - กดปุ่มตระกร้าสินค้า
    product_page.Click shopping cart button

    # [Expected 7] - ตรวจสอบสินค้าทั้ง 2 ชิ้นว่ามีอยู่ในหน้าตะกร้าสินค้า
    your_cart_page.Verify that product is displayed correctly    product_name=${product_name['product_1']}
    your_cart_page.Verify that product is displayed correctly    product_name=${product_name['product_2']}

    # [Step 8] - กดปุ่ม Remove ที่สินค้าที่ 1
    your_cart_page.Click remove product by name    product_name=${product_add_to_cart_id['product_1']}
    
    # [Expect 8] - สินค้าที่ 1 หายไปจากหน้าตะกร้าสินค้า
    your_cart_page.Verify that product is not displayed    product_name=${product_add_to_cart_id['product_1']}
   
    # [Step 9] - กดปุ่ม Remove ที่สินค้าที่ 2
    your_cart_page.Click remove product by name    product_name=${product_add_to_cart_id['product_2']}

    # [Expect 9] - สินค้าที่ 2 หายไปจากหน้าตะกร้าสินค้า
    your_cart_page.Verify that product is not displayed    product_name=${product_add_to_cart_id['product_2']}