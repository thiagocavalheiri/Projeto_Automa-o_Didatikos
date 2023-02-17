*** Settings ***

Library        Browser

*** Keywords ***

Clicar Avaliações Autorais
    Click        xpath=(//p[@class='my-auto text-dark text-bold small-caps f-16'])[3]
  

Verificar pagina avaliacoes on line    
    Click            xpath=(//*[@id="app"]//p)[2]

    #validar se está na página com elemento
    Get Element               xpath=(//*[contains(text(),'Criar Avaliação Online')]) [1]      


