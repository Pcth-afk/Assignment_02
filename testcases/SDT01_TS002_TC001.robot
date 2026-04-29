*** Settings ***
Resource    ${CURDIR}/../resources/import.resource

*** Test Cases ***
SDT01_TS002_TC001 - เช็คจำนวนสินค้าที่กดซื้อไปและเมื่อกดลบสินค้าในตระกร้า ในตะกร้าต้องไม่มีสินค้าเหลืออยู่
    [Documentation]
    [Tags]
    common_web.Open browser and maximize browser window    url=${url['test_web']}
    login_feature.Login to sawg labs with username and password    usrname=${user_info['user_name']['standard_user']}    password=${user_info['secret_sauce']}
    