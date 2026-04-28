*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{login_page_locator}
...    lbl_username=id=user-name
...    lbl_password=id=password
...    btn_login=id=login-button
...    txt_error_login=xpath=//h3[@data-test='error']