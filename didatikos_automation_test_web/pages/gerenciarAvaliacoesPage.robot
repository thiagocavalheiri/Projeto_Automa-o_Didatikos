*** Settings ***

Library        Browser

*** Keywords ***


Verificar pagina avaliacoes on line    
    Click            xpath=(//*[@id="app"]//p)[2]

    #validar se está na página com elemento
    Get Element               xpath=(//*[contains(text(),'Criar Avaliação Online')]) [1]      

