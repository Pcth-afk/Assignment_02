*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click finish button
    [Documentation]    กดปุ่ม Finish ยันยืนการซื้อสินค้า
    common_web.Wait and click element when ready    locator=${checkout_overview_locator['btn_finish']}

Verify that product is purchased completely
    [Documentation]    ตรวจสอบว่าการสั่งซื้อสินค้าเสร็จสมบูรณ์    
    SeleniumLibrary.Page Should Contain Element    locator=${checkout_overview_locator['txt_purchase_complete']}