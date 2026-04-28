*** Settings ***
Library    SeleniumLibrary
Library    yaml

# COMMON
Resource    ${CURDIR}/../keywords/common/common_web.resource


# YAML
Variables    ${CURDIR}/settings/setting.yaml