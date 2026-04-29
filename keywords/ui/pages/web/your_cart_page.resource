*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click checkout button
    [Documentation]    กดปุ่ม Checkout เพื่อไปยังหน้ากรอกข้อมูลชื่อและรหัสไปรษณีย์
    common_web.Wait and click element when ready    element=${your_cart_page_locator['btn_checkout']}

Click remove product by name
    [Documentation]    ลบสินค้าออกจากตระกร้าโดยกำหนดชื่อ locator
    [Arguments]    ${product_name}
    common_web.Replace locator with target text    locator=${your_cart_page_locator['btn_remove']}    replace_string=${product_name}