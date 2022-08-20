*** Settings ***
Documentation       Suite exemplo webtesting
Library    SeleniumLibrary
Resource   resource.robot


*** Test Cases ***
CT01 - Validar Campos Obrigatorios
    Acessar a URL
    Informar um email válido no campo: Email Address
    Clicar em “Create an account”
    Validar campos obrigatorios
    Fechar navegador

CT02 - Validar Registro de Conta
    Acessar a URL
    Informar um email válido no campo: Email Address
    Clicar em “Create an account”
    Criacao de Conta