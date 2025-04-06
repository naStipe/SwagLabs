*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${page}     https://nastipe.github.io/SwagLabs/

*** Test Cases ***
LoginTest
    Open browser    ${page}     chrome
    Maximize browser window
    Set selenium timeout    10 seconds
    Wait until page contains element    id:username
    Sleep    1 seconds
    Input text    id:username   standard_user
    Input text    id:password   secret_sauce
    Sleep    1 seconds
    Click button    id:login-button
    Wait until page contains    Products
    Sleep    1 seconds
    Click button    //*[@id="products-grid"]/div[1]/button
    Sleep    1 seconds
    Click button    //*[@id="products-grid"]/div[3]/button
    Sleep    1 seconds
    Click element    //*[@id="product-page"]/div[1]/div/div
    Wait until page contains    Checkout
    Sleep    1 seconds
    Click button    //*[@id="cart-items"]/div/button
    Sleep    1 seconds
    Input text    id:first-name     TestFirstName
    Input text    id:last-name      TestLastName
    Input text    id:postal-code    TestPostalCode
    Sleep    1 seconds
    Click button    //*[@id="checkout-page"]/div[2]/button
    Wait until page contains    Thank you
    Sleep    5 seconds

*** Keywords ***
