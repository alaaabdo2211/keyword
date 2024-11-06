*** Settings ***

Documentation    This is some basic info about the whole suite
Resource        ../Resources/Swag.robot
Resource        ../Resources/Common.robot
Resource        ../Resources/Signin.robot


*** Test Cases ***
Should add product to cart

    Swag.Search for Products
    Swag.Add Product to Cart
    Swag.Begin Checkout
    Swag.After Checkout
    Common.End Web Test
