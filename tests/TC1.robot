*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${page}     https://nastipe.github.io/SwagLabs/

*** Test Cases ***
LoginTest
    Open browser    ${page}     headlesschrome
    Maximize browser window
    Set selenium timeout    10 seconds
    Input text    id:username   standart_user
    Input text    id:password   secret_sauce
    Sleep    10 seconds
*** Keywords ***
