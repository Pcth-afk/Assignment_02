*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{your_cart_page_locator}
...    btn_remove=xpath=//button[@class='btn btn_secondary btn_small cart_button' and @name='***replace***']
...    btn_checkout=id=checkout
