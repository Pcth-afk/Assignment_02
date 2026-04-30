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

Click open menu
    [Documentation]    
    ...    กดปุ่มเมนูเพื่อเปิดหน้าตัวเลือก
    ...    โดยจะมี 4 ตัวเลือกคือ All Items, About, Logout, Reset App State
    common_web.Wait and click element when ready    locator=${product_locator['btn_menu']}

Click logout in menu
    [Documentation]    กดปุ่ม Logout ในแท็บเมนูเพื่อออกจากระบบ
    common_web.Wait and click element when ready    locator=${product_locator['txt_logout']}