*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Click finish button
    [Documentation]    กดปุ่ม Finish ยันยืนการซื้อสินค้า
    common_web.Wait and click element when ready    locator=${checkout_overview_locator['btn_finish']}