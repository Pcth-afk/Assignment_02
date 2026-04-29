*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{your_cart_locator}
...    btn_remove=id=remove-***replace***
...    btn_checkout=id=checkout
...    txt_product=xpath=//div[@class='inventory_item_name' and text()='***replace***']
