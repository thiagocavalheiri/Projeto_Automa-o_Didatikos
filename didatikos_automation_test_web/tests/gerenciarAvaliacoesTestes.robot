

 #fazer a validação das funcionalidades de "Avaliação Word"


*** Settings ***

Library      Browser

Resource        ../pages/loginPage.robot
Resource        ../Resources/baseTestes.robot
Resource        ../pages/homeEscolaPage.robot
Resource        ../pages/avaliacoesESimuladosPage.robot
Resource        ../pages/gerenciarAvaliacoesPage.robot


Resource        ../pages/gerenciarAvaliacoesPage.robot




Test Setup           Iniciar testes     


*** Variables ***
${VALUE_VAZIO}=


*** Test Cases ***

Validar o acesso de Avaliação Word
    Login com perfil Escola
    Acessar Avaliações / Simulados
    Verificar pagina avaliacoes e simulados
    Clicar na opção Avaliações Word

Validar Avaliacoes Online
    Login com perfil Escola
    Acessar Avaliações / Simulados
    Verificar pagina avaliacoes Online

Validar Avaliacoes e Simulados
    Login com perfil Escola
    Acessar Avaliações / Simulados
    Verificar pagina avaliacoes e simulados

    Clicar Avaliações Autorais
    
     


