*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SERVER}         http://localhost:3000
${BROWSER}        chrome
${VALID_USER}     pbutnaru
${VALID_PWD}      Butnaru123456789

*** Keywords ***
Open VaultChat Home Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Window Size    735    751

Explore Public Instance Elements
    Wait Until Element Is Visible    css=.mb-8    timeout=5s
    Click Element    css=.mb-8
    Click Element    css=.text-4xl
    Click Link       link:Login to Instance
    Click Link       link:VaultChat
    Click Element    css=.card:nth-child(1) .card-title
    Click Element    css=.btn-error
    Click Link       link:VaultChat
    Click Element    css=.btn-circle

Navigate To Login Section
    Wait Until Element Is Visible    link:Login    timeout=5s
    Click Link    link:Login

Submit Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    css=.input:nth-child(2)    timeout=5s
    Input Text    css=.input:nth-child(2)    ${username}
    Input Text    css=.input:nth-child(3)    ${password}
    Click Button    css=.btn-success

Verify Dashboard Is Accessible
    Wait Until Element Is Visible    link:Go to chats    timeout=5s
    Click Link    link:Go to chats
    Wait Until Element Is Visible    link:VaultChat    timeout=5s
    Click Link    link:VaultChat
    Click Element    css=span
    Click Element    css=.hero-content
    Click Element    css=.text-4xl
    Page Should Contain Element    css=.bg-success\/10 > svg

Verify Login Failed
    Page Should Not Contain Link    link:Go to chats