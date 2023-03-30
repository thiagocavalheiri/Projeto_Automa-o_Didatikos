*** Settings ***

Library        Browser

*** Variables ***

${navegador}
${dispositivo}


*** Keywords ***

Iniciar testes
    ${old_timeout} =    Set Browser Timeout    30 seconds
  #  Open Browser        http://didatikos-hmg.didatikos.com.br/ava/login              ${navegador}        headless=False               
  #  Set Browser Timeout    ${old_timeout}


#testes em IOS
      ${device}=                   Get Device                    ${dispositivo} 
        New Persistent Context         headless=false        &{device}        url=http://didatikos-hmg.didatikos.com.br/ava/login        isMobile=True                            
        Set Browser Timeout            ${old_timeout}

    