*** Settings ***
Documentation     Lab 5 - Login Acceptance Tests for VaultChat
Resource          ../resources/common_keywords.robot

*** Test Cases ***
TC-002: Valid User Login Flow And Chat Navigation
    [Documentation]    Executes a clean automated login and verifies dashboard access.
    Open VaultChat Home Page
    Navigate To Login Section
    Submit Credentials    ${VALID_USER}    ${VALID_PWD}
    Verify Dashboard Is Accessible
    [Teardown]    Close Browser