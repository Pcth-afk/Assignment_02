*** Settings ***
Library    SeleniumLibrary
Library    yaml
Library    String

# COMMON
Resource    ${CURDIR}/../keywords/common/common_web.resource

#locators
Resource    ${CURDIR}/locators/login_locator.resource
Resource    ${CURDIR}/locators/your_cart_locator.resource
Resource    ${CURDIR}/locators/product_locator.resource
Resource    ${CURDIR}/locators/checkout_your_information_locator.resource

# YAML
Variables    ${CURDIR}/settings/setting.yaml
Variables    ${CURDIR}/testdata/testdata.yaml