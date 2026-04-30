*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{your_cart_locator}
...    btn_remove=id=remove-***replace***
...    btn_checkout=id=checkout
...    txt_product=xpath=//div[@class='inventory_item_name' and text()='***replace***']
...    lbl_your_cart=xpath=//span[@class='title' and text()='${translation_web['page_title']['your_cart']}']