*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{checkout_your_information_page_locator}
...    lbl_first_name=id=first-name
...    lbl_last_name=id=last-name
...    lbl_postal_code=id=postal-code
...    btn_continue=id=continue