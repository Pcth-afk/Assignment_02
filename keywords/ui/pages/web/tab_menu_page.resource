*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click logout menu
    [Documentation]    
    ...    กดปุ่มเมนูเพื่อเปิดหน้าตัวเลือก
    ...    โดยจะมี 4 ตัวเลือกคือ All Items, About, Logout, Reset App State
    common_web.Wait and click element when ready    locator=${product_locator['btn_menu']}