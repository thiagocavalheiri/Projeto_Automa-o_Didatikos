*** Settings ***

Library        Browser

*** Variables ***

${navegador}
${dispositivo}
${execucao}


*** Keywords ***
Iniciar gravacao video
     New Context  recordVideo={'dir':'videos/${TEST_NAME}'}      viewport={'width': 1920, 'height': 1080}


Iniciar testes
  
  ${old_timeout} =    Set Browser Timeout    30 seconds
    
  IF  '${execucao}' == 'web'
      Iniciar gravacao video
      # Open Browser        http://didatikos-hmg.didatikos.com.br/ava/login              ${navegador}        headless=False
      New Page         http://didatikos-hmg.didatikos.com.br/ava/login 
      Set Browser Timeout    ${old_timeout}
      
  END

  IF  '${execucao}' == 'mobile'
      Iniciar gravacao video
      ${device}=                   Get Device                    ${dispositivo} 
      New Persistent Context         headless=false        &{device}        url=http://didatikos-hmg.didatikos.com.br/ava/login        isMobile=True                            
      Set Browser Timeout            ${old_timeout} 
  END
  
  

