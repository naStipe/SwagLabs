*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${page}     file:///C:/Users/Bakery/PycharmProjects/SwagLabs/pages/swag_labs.html

*** Test Cases ***
LoginTest
    Open browser    ${page}     chrome
    Maximize browser window
    Set selenium timeout    10 seconds
    Input text    id:username   standart_user
    Input text    id:password   secret_sauce
    Sleep    10 seconds
*** Keywords ***
