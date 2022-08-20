*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${browser}  chrome
${URL}      http://automationpractice.com/index.php?controller=authentication&back=my-account
${IPT_EMAIL}    //input[contains(@name,'create')]
${BTN_CREATE_COUNT}    //span[contains(.,'Create an account')]
${BTN_REGISTER}    //span[contains(.,'Register')]
${ALERT_MSG}    //p[contains(.,'There are 8 errors')]
${RDN_TITLE}    //input[@type='radio'][contains(@id,'gender1')]
${IPT_FIRST_NAME}    //input[@name='customer_firstname']
${IPT_LAST_NAME}    //input[@name='customer_lastname']
${IPT_PASSWORD}    //input[contains(@type,'password')]

${IPT_FIRST_NAME_ADDRESS}    //input[@name='firstname']
${IPT_LAST_NAME_ADDRESS}    //input[@name='lastname']
${IPT_ADDRESS}    //input[@name='address1']
${IPT_CITY}    //input[@name='city']
${CBO_STATE}    //option[contains(.,'Colorado')]
${IPT_POSTCODE}    //input[@name='postcode']
${CBO_COUNTRY}    //option[contains(.,'United States')]
${IPT_MOBILE_PHONE}   //input[contains(@name,'mobile')]
${LBL_WELCOME}    //p[contains(.,'Welcome to your account. Here you can manage all of your personal information and orders.')]
*** Keywords ***
Acessar a url
    Open Browser    url=${URL}  browser=${browser}

Informar um email válido no campo: Email Address
    Input Text     ${IPT_EMAIL}    monteiroclmauriciooo@gmail.com

Clicar em “Create an account”
    Click Element    ${BTN_CREATE_COUNT}

Validar campos obrigatorios
    Wait Until Element Is Visible    ${BTN_REGISTER}
    Click Element    ${BTN_REGISTER}
    Wait Until Element Is Visible    ${ALERT_MSG}
    Capture Page Screenshot    ALERT.PNG

Fechar navegador
    Close Browser

Criacao de Conta
    Wait Until Element Is Visible    ${RDN_TITLE}
    Click Element    ${RDN_TITLE}
    Input Text    ${IPT_FIRST_NAME}    MAURICIO
    Input Text    ${IPT_LAST_NAME}    MONTEIRO
    Wait Until Element Is Visible    ${IPT_PASSWORD}
    Input Text    ${IPT_PASSWORD}    Simba

    Input Text    ${IPT_ADDRESS}    ESTRADA DO TINDIBA
    Input Text    ${IPT_CITY}    BRASIL
    Click Element    ${CBO_STATE}
    Input Text    ${IPT_POSTCODE}    22740
    Click Element    ${CBO_COUNTRY}
    Input Text    ${IPT_MOBILE_PHONE}    21981812994
    Click Element    ${BTN_REGISTER}
    Wait Until Element Is Visible    ${LBL_WELCOME}
    Capture Page Screenshot    SUCESS.PNG