*** Settings ***
Library    SeleniumLibrary
Library    yaml
Library    String

# COMMON
Resource    ${CURDIR}/../keywords/common/common_web.resource

# PAGEs
Resource    ${CURDIR}/../keywords/ui/pages/web/login_page.resource
Resource    ${CURDIR}/../keywords/ui/pages/web/product_page.resource
Resource    ${CURDIR}/../keywords/ui/pages/web/your_cart_page.resource
Resource    ${CURDIR}/../keywords/ui/pages/web/checkout_overview_page.resource

#locators
Resource    ${CURDIR}/locators/login_locator.resource
Resource    ${CURDIR}/locators/your_cart_locator.resource
Resource    ${CURDIR}/locators/product_locator.resource
Resource    ${CURDIR}/locators/checkout_your_information_locator.resource
Resource    ${CURDIR}/locators/checkout_overview_locator.resource

# YAML
Variables    ${CURDIR}/settings/setting.yaml
Variables    ${CURDIR}/testdata/testdata.yaml