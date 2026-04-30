*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{checkout_your_information_locator}
...    txt_first_name=id=first-name
...    txt_last_name=id=last-name
...    txt_postal_code=id=postal-code
...    btn_continue=id=continue
...    lbl_chekout_your_information=xpath=//span[@class='title' and text()='${translation_web['page_title']['check_out_your_information']}']