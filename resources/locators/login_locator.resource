*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{login_locator}
...    txt_username=id=user-name
...    txt_password=id=password
...    btn_login=id=login-button
...    txt_error_login=xpath=//h3[contains(text(), "Epic sadface: Sorry, this user has been locked out")]