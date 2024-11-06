*** Settings ***
Library    Selenium2Library
Resource    ../Resources/Signin.robot


*** Keywords ***

Search For Products
        Open Browser   https://www.saucedemo.com        chrome
        Wait Until Page Contains    Swag Labs
        Signin.Sign In Customer
        Wait Until Page Contains    Products

Add Product to Cart
    Click Button    id=add-to-cart-sauce-labs-backpack

Begin Checkout
    Click Element    css=#shopping_cart_container a.shopping_cart_link    
    Wait Until Page Contains    Your Cart
    Click Button    id=checkout
    Wait Until Page Contains    Checkout: Your Information

After Checkout
    Input Text        id=first-name        Alaa    
    Input Text        id=last-name         Abdo  
    Input Text        id=postal-code       00962    
    Click Button      id=continue
    Wait Until Page Contains    Checkout: Overview
    Sleep    5s
    Click Button    id=finish
  

