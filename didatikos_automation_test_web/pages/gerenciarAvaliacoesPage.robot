*** Settings ***

Library        Browser

*** Keywords ***


Clicar na opção Avaliações Word
    Click    xpath=(//*[@id="app"]//p)[1]
    Get Title    ==    Prova - Didatikos
