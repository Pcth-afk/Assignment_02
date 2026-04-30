*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{checkout_overview_locator}
...    btn_finish=id=finish
...    lbl_purchase_complete=xpath=//h2[@class='complete-header']
...    lbl_chekout_overview=xpath=//span[@class='title' and text()='Checkout: Overview']