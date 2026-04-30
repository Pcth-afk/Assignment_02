*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click logout menu
    [Documentation]    กดปุ่ม Logout ในแท็บเมนูเพื่อออกจากระบบ    
    common_web.Wait and click element when ready    locator=${product_locator['txt_logout']}