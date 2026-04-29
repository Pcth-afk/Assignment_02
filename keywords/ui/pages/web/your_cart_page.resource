*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click checkout button
    [Documentation]    กดปุ่ม Checkout เพื่อไปยังหน้ากรอกข้อมูลชื่อและรหัสไปรษณีย์
    common_web.Wait and click element when ready    locator=${your_cart_page_locator['btn_checkout']}

Click remove product by name
    [Documentation]    Replace product name ที่ต้องการ Remove จากนั้นกดปุ่ม Remove
    [Arguments]    ${product_name}
    ${new_locator}=    common_web.Replace locator with target text    locator=${your_cart_page_locator['btn_remove']}    replace_string=${product_name}
    common_web.Wait and click element when ready    locator=${your_cart_page_locator['new_locator']}

Verify chosen product
    [Documentation]    ตรวจสอบสินค้าที่กด Add to cart ว่าสินค้ามีอยู่ในหน้า Your cart หรือไม่
    [Arguments]    ${product_name}
    ${new_locator}=    common_web.Replace locator with target text    locator=${your_cart_page_locator['txt_product']}    replace_string=${product_name}
    SeleniumLibrary.Page Should Contain Element    locator=${new_locator}