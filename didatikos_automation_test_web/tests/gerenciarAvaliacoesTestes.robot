*** Settings ***

Library      Browser

Resource        ../pages/loginPage.robot
Resource        ../Resources/baseTestes.robot
Resource        ../pages/homeEscolaPage.robot
Resource        ../pages/avaliacoesESimuladosPage.robot

Test Setup           Iniciar testes     


*** Variables ***
${VALUE_VAZIO}=


*** Test Cases ***
Validar Avaliacoes e Simulados
    Login com perfil Escola
    Acessar Avaliações / Simulados
    Verificar pagina avaliacoes e simulados
    Acessar 
