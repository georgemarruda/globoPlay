*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://login.globo.com/login/4654

*** keywords ***
Inicia sessão
    Open Browser                        ${url}                                                  chrome

Encerra sessão
    Close Browser