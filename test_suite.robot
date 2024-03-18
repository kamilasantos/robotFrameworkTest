*** Settings ***
Documentation     Example test suite using Robot Framework
...
Resource          ../keywords/navigation_keywords.robot

*** Test Cases ***
Example Test
    Navigate To Page    http://automationexercise.com
    Navigate To Products Page
    Verify Search Bar Visibility
    Write Text To Search Bar    Men Tshirt
    Click Search Button
    Verify Product Visibility    Men Tshirt
    Add To Cart
    Write Text To Search Bar    Men Tshirt 
    Add To Cart
    Click Cart Button
    Verify Products In Cart
    Verify Sum Of Product Values