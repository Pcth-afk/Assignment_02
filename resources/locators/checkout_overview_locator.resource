*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{checkout_overview_locator}
...    btn_finish=id=finish
...    lbl_purchase_complete=xpath=//span[@class='title' and text()='${translation_web['page_title']['checkout_complete']}']
...    lbl_chekout_overview=xpath=//span[@class='title' and text()='${translation_web['page_title']['checkout_overview']}']