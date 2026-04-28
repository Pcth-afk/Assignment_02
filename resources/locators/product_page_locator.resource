*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{product_page_locator}
...    btn_menu=id=react-burger-menu-btn
...    txt_logout=id=logout_sidebar_link
...    btn_shopping_cart=xpath=//a[@class='shopping_cart_link']
...    txt_product=xpath=//div[@class='inventory_item_name ' and text()='***replace***']
...    btn_add_to_cart=xpath=//button[@class='btn btn_primary btn_small btn_inventory ' and name()='***replace***']