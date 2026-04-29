*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{checkout_overview_locator}
...    btn_finish=id=finish
...    txt_purchase_complete=xpath=//h2[@class='complete-header']