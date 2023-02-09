*** Settings ***

Library      Browser

Resource        ../pages/loginPage.robot
Resource        ../Resources/baseTestes.robot
Resource        ../pages/homeEscolaPage.robot

Test Setup           Iniciar testes     


*** Variables ***
${VALUE_VAZIO}=


*** Test Cases ***
Validar Quadro de Aulas
    Login com perfil Escola  
    Acessar Quadro de Aulas
    Get Title        ==        Quadro de Aulas - Didatikos