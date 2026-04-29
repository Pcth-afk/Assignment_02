*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click add to cart button by product name
    [Documentation]
    [Arguments]    ${product_name}
    ${new_locator}=    common_web.Replace locator with target text    locator=${product_page_locator[btn_add_to_cart]}    replace_string=${product_name}  
    common_web.Wait and click element when ready    locator=${new_locator}

Click shopping cart button
    [Documentation]    กดปุ่มตะกร้าสินค้าเพื่อไปยังหน้าสินค้าที่ได้เลือกไว้
    common_web.Wait and click element when ready    locator=${product_page_locator['btn_shopping_cart']}

Click open menu
    [Documentation]    
    ...    กดปุ่มเมนูเพื่อเปิดหน้าตัวเลือก
    ...    โดยจะมี 4 ตัวเลือกคือ All Items, About, Logout, Reset App State
    common_web.Wait and click element when ready    locator=${product_page_locator['btn_menu']}

Click logout in menu
    [Documentation]    กดปุ่ม Logout ในแท็บเมนูเพื่อออกจากระบบ
    common_web.Wait and click element when ready    locator=${product_page_locator['txt_logout']}