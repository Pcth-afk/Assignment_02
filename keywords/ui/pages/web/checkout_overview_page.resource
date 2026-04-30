*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click finish button
    [Documentation]    กดปุ่ม Finish ยันยืนการซื้อสินค้า
    common_web.Wait and click element when ready    locator=${checkout_overview_locator['btn_finish']}

Verify that product is purchased completely
    [Documentation]    ตรวจสอบว่าการสั่งซื้อสินค้าเสร็จสมบูรณ์
    SeleniumLibrary.Wait Until Page Contains Element    locator=${checkout_overview_locator['lbl_purchase_complete']}

Verify that checkout: overview page is loaded successfully
    [Documentation]    ตรวจสอบหน้า Checkout: overview ว่าโหลดเสร็จสมบูรณ์
    SeleniumLibrary.Wait Until Page Contains Element    locator=${checkout_overview_locator['lbl_chekout_overview']}