*** Settings ***
Documentation     Lab 5 - Keyword-Driven UI Testing for VaultChat
Resource          ../resources/common_keywords.robot

*** Test Cases ***
TC-001: Public Navigation And Unauthenticated Interaction
    [Documentation]    Executes public layout clicks without authentication.
    Open VaultChat Home Page
    Explore Public Instance Elements
    [Teardown]    Close Browser

TC-002: Valid User Login Flow And Chat Navigation
    [Documentation]    Executes a clean automated login and verifies dashboard access.
    Open VaultChat Home Page
    Navigate To Login Section
    Submit Credentials    ${VALID_USER}    ${VALID_PWD}
    Verify Dashboard Is Accessible
    [Teardown]    Close Browser