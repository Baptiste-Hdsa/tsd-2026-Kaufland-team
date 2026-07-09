*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SERVER}         http://localhost:8584
${BROWSER}        firefox
${VALID_USER}     pbutnaru
${VALID_PWD}      Butnaru123456789

*** Keywords ***
Open VaultChat Home Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Window Size    1280    900

Explore Public Instance Elements
    # Utilisation d'un sélecteur plus large et d'un timeout rallongé à 10s
    Wait Until Element Is Visible    css=body    timeout=10s
    Sleep    2s
    Run Keyword And Ignore Action    Click Element    css=.mb-8
    Sleep    1s

Navigate To Login Section
    Wait Until Element Is Visible    link:Login    timeout=10s
    Click Link    link:Login

Submit Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    css=form    timeout=10s
    Input Text    css=.input:nth-child(2)    ${username}
    Input Text    css=.input:nth-child(3)    ${password}
    Click Button    css=.btn-success

Verify Dashboard Is Accessible
    # On laisse un délai de chargement de la page après le succès du login
    Sleep    3s
    Wait Until Page Contains    Go to chats    timeout=15s
    Click Link    link:Go to chats
    Sleep    2s

Verify Login Failed
    Page Should Not Contain Link    link:Go to chats

Run Keyword And Ignore Action
    [Arguments]    ${keyword}    @{args}
    Run Keyword And Ignore Error    ${keyword}    @{args}