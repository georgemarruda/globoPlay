*** Settings ***
Resource        base.robot

Test Setup      Inicia sessão
Test Teardown   Encerra sessão



*** Test Cases ***
Login com sucesso   
    Input Text                          id:login                                   georgem.juniore@gmail.com     
    Input Text                          id:password                                Babylon2018
    Click Element                       class:button
    Wait Until Location is              https://www.globo.com/
    Click Element                       class:videos
    Set Selenium Implicit Wait          10s
    Click Element                       class:menu-icon
    Page Should Contain                 Georgem Arruda

Login com senha inválida  
    [tags]                  login_error
    Input Text              id:login            eryhswhbszh     
    Input Text              id:password         qwert
    Click Element           class:button

    ${return}=              Get WebElement      class:error
    Should Contain          Seu usuário ou senha estão incorretos.