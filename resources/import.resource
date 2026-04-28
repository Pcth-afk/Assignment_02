*** Settings ***
Library    SeleniumLibrary
Library    yaml
Library    String

# COMMON
Resource    ${CURDIR}/../keywords/common/common_web.resource

#locators
Resource    ${CURDIR}/locators/login_page_locator.resource


# YAML
Variables    ${CURDIR}/settings/setting.yaml
Variables    ${CURDIR}/testdata/testdata.yaml