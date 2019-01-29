*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${api_precompanyname} =  ${name}
${api_commapy_address} =    ที่อยู่  เลขที่ ${address_no}  ห้อง ${address_room}  ชั้น ${address_floorNo} อาคาร ${address_building}  หมู่ ${address_homeGroup}  ตรอก/ซอย ${address_soi}  ถนน ${address_road}  ${address_subDistrict} ${address_district} ${address_province} ${address_postcode} 
${api_taxidentification} =   ${taxIdentificationNumber}
${api_receiptNo} =      ${receiptNo}     
${api_descriptionreport} =     ${descriptionreport}
${api_billNo} =     ${billNo}
${api_billDate} =     ${billDate}
${api_remark} =     ${remark}
${api_paymentTotalTHBAHT} =      ( ${paymentTotalTHBAHT} ) 
${api_itemdescription} =    ${itemdescription}
${api_qty_unit_price} =     ${unitPrice}
${api_discount} =   ${discount}
${api_subTotalPriceVatExempt} =   ${subTotalPriceVatExempt}
${api_subTotalPriceBeforeVat} =       ${subTotalPriceBeforeVat}
${api_totalPrice} =       ${totalPrice}
${api_transactionDate} =    ${transactionDate}
${api_vatAmount} =    ${vatAmount}

*** Keywords ***

Click radio circle
    Click Element       xpath:(//div[@class="mat-radio-label-content"])[2]

Select Journal List
    [Arguments]     
    Click Element       xpath://*[@id="sl-oe-detail-0"]/div[1]

Click Btn Print
    Click Button       id:btn-oe-preview

Get precompany name
    ${precompany_name}=       Get Text      id:pre-company-name-doc-0
    Log To Console      ${precompany_name}
    Set Suite Variable      ${precompany_name}

Get company addressConcat
    ${company_addressConcat}=       Get Text      id:pre-company-addressConcat-doc-0
    Log To Console      ${company_addressConcat}
    Set Suite Variable      ${company_addressConcat}

Get taxIdentification
    ${company_taxIdentification}=       Get Text      id:pre-company-taxIdentification-doc-0
    Log To Console      ${company_taxIdentification}
    Set Suite Variable      ${company_taxIdentification}

Get branch
    ${branch}=       Get Text      id:pre-company-branch-no-doc-0
    Log To Console      ${branch}
    Set Suite Variable      ${branch}

Get description
    ${description}=       Get Text      id:pre-description-report-0
    Log To Console      ${description}
    Set Suite Variable      ${description}

Get receipt no
    ${receipt_no}=       Get Text      id:pre-receipt-no-report-0
    Log To Console      ${receipt_no}
    Set Suite Variable      ${receipt_no}

Get bill no
    ${bill_no}=       Get Text      id:pre-bill-no-report-0
    Log To Console      ${bill_no}
    Set Suite Variable      ${bill_no}

Get bill date
    ${bill date}=       Get Text      id:pre-bill-date-report-0
    Log To Console      ${bill date}
    Set Suite Variable      ${bill date}

Get name report
    ${name_report}=       Get Text      id:pre-account-payable-info-name-report-0
    Log To Console      ${name_report}
    Set Suite Variable      ${name_report}

Get item description
    ${item_description}=       Get Text      id:pre-item-description-report-0-0
    Log To Console      ${item_description}
    Set Suite Variable      ${item_description}

Get unit price
    ${unit_price}=       Get Text      id:pre-item-description-report-0-0
    Log To Console      ${unit_price}
    Set Suite Variable      ${unit_price}

Get remark report
    ${remark_report}=       Get Text      id:pre-remark-report-0
    Log To Console      ${remark_report}
    Set Suite Variable      ${remark_report}

Get discount report
    ${discount_report}=       Get Text      id:pre-sub-total-discount-report-0
    Log To Console      ${discount_report}
    Set Suite Variable      ${discount_report}

Get tax amount report
    ${tax_amount_report}=       Get Text      id:pre-tax-amount-report-0
    Log To Console      ${tax_amount_report}
    Set Suite Variable      ${tax_amount_report}

Get payment total report
    ${payment_total}=       Get Text      id:pre-payment-total-th-report-0
    Log To Console      ${payment_total}
    Set Suite Variable      ${payment_total}

Get sub payment report
    ${sub_payment}=       Get Text      id:pre-sum-payment-total-report-0
    Log To Console      ${sub_payment}
    Set Suite Variable      ${sub_payment}

Get pre total exempt
    ${total_vat_exampt_report}=       Get Text      id:pre-sub-total-vat-exampt-report-0
    Log To Console      ${total_vat_exampt_report}
    Set Suite Variable      ${total_vat_exampt_report}

Get pre qty unit price
    ${qty_unit_price}=       Get Text      id:pre-item-total-qty-unit-price-report-0-0
    Log To Console      ${qty_unit_price}
    Set Suite Variable      ${qty_unit_price}

Get pre discount
    ${total_discount_report}=       Get Text      id:pre-total-discount-report-0
    Log To Console      ${total_discount_report}
    Set Suite Variable      ${total_discount_report}
    
Get pre transection beforevat 
    ${transection_beforevat}=       Get Text      id:pre-sub-total-before-vat-report-0
    Log To Console      ${transection_beforevat}
    Set Suite Variable      ${transection_beforevat}

Get pre vat amount
    ${vat_amount}=       Get Text      id:pre-vat-amount-report-0
    Log To Console      ${vat_amount}
    Set Suite Variable      ${vat_amount}

Get pre transaction date
    ${transaction_date}=       Get Text      id:pre-transaction-date-report-0
    Log To Console      ${transaction_date}
    Set Suite Variable      ${transaction_date}

Run Python1 Access Token
    Run Process     python      /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi.py

Run Python2 id from list
    Run Process     python      /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi2.py

Run Python3 Get Value 
    Run Process     python      /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi3.py

Check api precompanyname
    Get precompany name     
    Should Be Equal As Strings      ${precompany_name}     ${api_precompanyname} 
    
Check api company addressConcat
    Get company addressConcat
    Should Be Equal As Strings      ${company_addressConcat}     ${api_commapy_address} 

Check api taxidentification
    Get taxIdentification       
    Should Be Equal As Strings      ${company_taxIdentification}        ${taxIdentificationNumber}

Check api receipt no
    Get receipt no
    Should Be Equal As Strings      ${api_receiptNo}        ${receipt_no}   

Check api description
    Get description
    Should Be Equal As Strings      ${api_descriptionreport}        ${description}    

Check api bill no
    Get bill no
    Should Be Equal As Strings      ${api_billNo}       ${bill_no}

Check api remark
    Get remark report
    Should Be Equal As Strings      ${api_remark}       ${remark_report}        

Check api payment total
    Get payment total report
    Should Be Equal As Strings      ${api_paymentTotalTHBAHT}       ${payment_total}    

Check api itemdescription
    Get item description
    Should Be Equal As Strings      ${api_itemdescription}       ${item_description}  

Check api qty unit price
    Get pre qty unit price
    ${api_qty} =   convert_cur     ${api_qty_unit_price}
    Should Be Equal As Strings       ${api_qty}      ${qty_unit_price}

Check api discount
    Get pre discount
    ${api_discount_result} =   convert_cur     ${api_discount}
    Should Be Equal As Strings       ${api_discount_result}      ${total_discount_report}

Check api subTotalPriceVatExempt
    Get pre total exempt
    ${api_subTotalPriceVatExempt_result} =   convert_cur     ${api_subTotalPriceVatExempt}
    Should Be Equal As Strings       ${api_subTotalPriceVatExempt_result}      ${total_vat_exampt_report}


Check api subTotalPriceBeforeVat
    Get pre transection beforevat 
    ${api_subTotalPriceBeforeVat_result} =   convert_cur     ${api_subTotalPriceBeforeVat}
    Should Be Equal As Strings       ${api_subTotalPriceBeforeVat_result}      ${transection_beforevat}


Check api totalPrice
    Get sub payment report
    ${api_totalPrice_result} =   convert_cur     ${api_totalPrice}
    Should Be Equal As Strings       ${api_totalPrice_result}      ${sub_payment}

Check api transaction date
    Get pre transaction date
    ${api_transaction_date_result} =    convert_data_time    ${api_transactionDate}
    Should Be Equal As Strings       ${api_transaction_date_result}     ${transaction_date}  

Check api bill date
    Get bill date
    ${api_billDate} =    convert_data_time    ${api_billDate} 
    Should Be Equal As Strings       ${api_billDate}        ${bill date}

Check api vat amount
    Get pre vat amount
    ${api_vatAmount} =    convert_cur    ${api_vatAmount} 
    Should Be Equal As Strings       ${api_vatAmount}         ${vat_amount}
      
    
    
    
    



















