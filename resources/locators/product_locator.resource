*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Variables ***
&{product_locator}
...    btn_menu=id=react-burger-menu-btn
...    txt_logout=id=logout_sidebar_link
...    btn_shopping_cart=id=shopping_cart_container
...    btn_add_to_cart=id=add-to-cart-***replace***
...    lbl_product=xpath=//span[@class='title' and text()='${translation_web['page_title']['product']}']
...    btn_shopping_cart_number=xpath=//span[@class='shopping_cart_badge' and text()='***replace***']