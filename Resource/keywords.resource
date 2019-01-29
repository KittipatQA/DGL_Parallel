*** Settings ***
Library     ${Path_Environment}/Resource/easy_math.py  WITH NAME  math

*** Keywords ***

Verify addition of ${operand1} and ${operand2}
    [Documentation]    Verify addition of two integers
    ${calculated_result}=  math.calculate  ${operand1}  ${operand2}  +
    Log To Console  ${calculated_result}
    Set Suite Variable      ${calculated_result}

Verify subtraction of ${operand1} and ${operand2}
    [Documentation]    Verify subtraction of two integers
    ${calculated_result}=  math.calculate  ${operand1}  ${operand2}  -
    Log To Console  ${calculated_result}
    Set Suite Variable      ${calculated_result}
  

Verify multiplication of ${operand1} and ${operand2}
    [Documentation]    Verify multiplication of two integers
    ${calculated_result}=  math.calculate  ${operand1}  ${operand2}  *
    Log To Console  ${calculated_result}
    Set Suite Variable      ${calculated_result}
    
Verify division of ${operand1} and ${operand2}
    [Documentation]    Verify division of two integers
    ${calculated_result}=  math.calculate  ${operand1}  ${operand2}  /
    Log To Console  ${calculated_result}
    Set Suite Variable      ${calculated_result}
    
Convert
    [Arguments]     ${input_current}
    ${return_current}=  convert_cur     ${input_current}
    Log To Console      ${return_current}               
    Set Suite Variable      ${return_current}

S

