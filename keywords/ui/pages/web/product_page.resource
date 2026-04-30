*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click add to cart button by product name
    [Documentation]    กดปุ่ม Add to cart เพื่อเพิ่มสินค้าที่ต้องการลงตะกร้าสินค้า
    [Arguments]    ${product_name}
    ${new_locator}=    common_web.Replace locator with target text    locator=${product_locator['btn_add_to_cart']}    replace_string=${product_name}  
    common_web.Wait and click element when ready    locator=${new_locator}

Click shopping cart button
    [Documentation]    กดปุ่มตะกร้าสินค้าเพื่อไปยังหน้า Your Cart
    common_web.Wait and click element when ready    locator=${product_locator['btn_shopping_cart']}

Click logout in menu
    [Documentation]    กดปุ่ม Logout ในแท็บเมนูเพื่อออกจากระบบ    
    common_web.Wait and click element when ready    locator=${product_locator['txt_logout']}

Verify that product page is loaded successfully
    [Documentation]    ตรวจสอบหน้า Product ว่าโหลดเสร็จสมบูรณ์
    SeleniumLibrary.Wait Until Page Contains Element    locator=${product_locator['lbl_product']}

Verify that add to cart is worked successfully
    [Documentation]    หลังจากปุ่ม Add to cart จะตรวจสอบที่ปุ่มตะกร้าสินค้าว่ามีตัวเลขตามจำนวนสิ้นค้าที่กด Add to cart หรือไม่
    [Arguments]    ${product_qty}
    ${new_locator} =    common_web.Replace locator with target text    locator=${product_locator['btn_shopping_cart_number']}    replace_string=${product_qty}
    SeleniumLibrary.Page Should Contain Element    locator=${new_locator}

Verify that tab menu is loaded successfully
    [Documentation]    ตรวจสอบว่าแท็บ menu โหลดเสร็จสมบูรณ์
    SeleniumLibrary.Wait Until Element Is Visible    locator=${product_locator['txt_logout']}    