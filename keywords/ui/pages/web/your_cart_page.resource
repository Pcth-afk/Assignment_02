*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click checkout button
    [Documentation]    กดปุ่ม Checkout เพื่อไปยังหน้ากรอกข้อมูลชื่อและรหัสไปรษณีย์
    common_web.Wait and click element when ready    locator=${your_cart_locator['btn_checkout']}

Click remove product by name
    [Documentation]    ทำการ Replace ชื่อสินค้าที่ต้องการ จากนั้นกดปุ่ม Remove เพื่อนำสินค้าออกจากตะกร้าสินค้า
    [Arguments]    ${product_name}
    ${new_locator}=    common_web.Replace locator with target text    locator=${your_cart_locator['btn_remove']}    replace_string=${product_name}
    common_web.Wait and click element when ready    locator=${new_locator}

Verify that product is displayed correctly
    [Documentation]    ตรวจสอบสินค้าที่กดปุ่ม Add to cart ว่าสินค้ามีอยู่ในหน้าตะกร้าสินค้าหรือไม่
    [Arguments]    ${product_name}
    ${new_locator}=    common_web.Replace locator with target text    locator=${your_cart_locator['txt_product']}    replace_string=${product_name}
    SeleniumLibrary.Page Should Contain Element    locator=${new_locator}