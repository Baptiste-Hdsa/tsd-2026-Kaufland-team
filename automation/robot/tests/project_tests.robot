*** Settings ***
Documentation     Lab 5 - Public Project & Layout Tests for VaultChat
Resource          ../resources/common_keywords.robot

*** Test Cases ***
TC-001: Public Navigation And Unauthenticated Interaction
    [Documentation]    Executes public layout clicks without authentication.
    Open VaultChat Home Page
    Explore Public Instance Elements
    [Teardown]    Close Browser