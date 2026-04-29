*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{checkout_your_information_page_locator}
...    txt_first_name=id=first-name
...    txt_last_name=id=last-name
...    txt_postal_code=id=postal-code
...    btn_continue=id=continue