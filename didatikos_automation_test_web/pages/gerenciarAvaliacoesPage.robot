*** Settings ***

Library        Browser

*** Keywords ***


Clicar na opção Avaliações Word
    Click    xpath=(//*[@id="app"]//p)[1]
    Get Title    ==    Prova - Didatikos

Clicar Avaliações Autorais
    Click        xpath=(//p[@class='my-auto text-dark text-bold small-caps f-16'])[3]
  

Verificar pagina avaliacoes on line    
    Click            xpath=(//*[@id="app"]//p)[2]

    #validar se está na página com elemento
    Get Element               xpath=(//*[contains(text(),'Criar Avaliação Online')]) [1]      


