*** Settings ***

Library    Selenium2Library


*** Keywords ***

Sign In Customer       
         Input Text                     id=user-name         standard_user
         Input Text                     id=password         secret_sauce
         Click Button                    id=login-button
