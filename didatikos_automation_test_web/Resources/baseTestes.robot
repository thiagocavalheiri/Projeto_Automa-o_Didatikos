*** Settings ***

Library        Browser
*** Variables ***
${navegador}

*** Keywords ***

Iniciar testes
  
    ${old_timeout} =    Set Browser Timeout    30 seconds
    
  IF  '${execucao}' == 'web'
      Open Browser        http://didatikos-hmg.didatikos.com.br/ava/login              ${navegador}        headless=False               
      Set Browser Timeout    ${old_timeout}
      
  END

  IF  '${execucao}' == 'mobile'
      ${device}=                   Get Device                    ${dispositivo} 
      New Persistent Context         headless=false        &{device}        url=http://didatikos-hmg.didatikos.com.br/ava/login        isMobile=True                            
      Set Browser Timeout            ${old_timeout}      
  END