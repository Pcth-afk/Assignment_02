*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{login_page_locator}
...    txt_username=id=user-name
...    txt_password=id=password
...    btn_login=id=login-button
...    txt_error_login=xpath=//h3[@data-test='error']