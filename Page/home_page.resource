*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${buy}      xpath:(//span[@class="menu-title"])[2]
${save_other_buy_list}      xpath:(//span[@class="menu-title"])[4]
${sell}     xpath:(//span[@class="menu-title"])[5]
${save_otherRevenue_sell_list}      xpath:(//span[@class="menu-title"])[7]

*** Keywords ***

Click Tab Buy
    Element Should Be Visible           ${buy}
    Click Element       ${buy}

Click Tab OtherExpense
    Element Should Be Visible           ${save_other_buy_list}
    Click Element       ${save_other_buy_list}    

Click Tab Sell 
    Element Should Be Visible           ${sell}
    Click Element       ${sell}

Click Tab otherRevenue
    Element Should Be Visible           ${save_otherRevenue_sell_list}
    Click Element       ${save_otherRevenue_sell_list}    