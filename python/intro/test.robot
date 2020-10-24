
*** Settings ***
Library     app.py


*** Test Cases ***
Deve Retornar meu nome
    ${result}=          Welcome     Ton
    Should Be Equal     ${result}   Ola Ton