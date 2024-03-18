*** Settings ***
Resource          ../keywords/common_keywords.robot

*** Keywords ***
Navigate To Page
    [Arguments]    ${url}
    Open Browser To Site    ${url}

Navigate To Products Page
    Click Link    //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a

Verify Search Bar Visibility
    Page Should Contain Element    xpath://input[@name='search']

Write Text To Search Bar
    [Arguments]    ${text}
    Input Text    xpath://input[@name='search']    ${text}

Click Search Button
    Click Element  xpath://*[@id="submit_search"]

Verify Product Visibility
    [Arguments]    ${product_name}
    Page Should Contain    ${product_name}

Add To Cart
    Click Button    /html/body/section[2]/div[1]/div/div[2]/div/div[3]/div/div[1]/div[2]/div
    
Click Cart Button
    Click Button    //*[@id="cartModal"]/div/div/div[2]/p[2]

Verify Products In Cart
    Page Should Contain Element    //*[@id="cart_info_table"]

Verify Sum Of Product Values
    ${total} =    Get Text    //*[@id="product-2"]/td[5]/p
    Should Be Equal As Numbers    ${total}    Rs. 800  