*** Settings ***
Library    Browser
Resource   C:\\Users\\Arcadia30\\Desktop\\Work\\TMP Travel Management Platform\\Resources\\Repositories\\xpathstorage.robot
Resource   ../Variables/variableTest.robot
Resource    ../Localized/${language}/Verify.robot


*** Keywords ***
Input In Search Box          
    [arguments]        ${typing}
    Type Text          ${txt_google_search}       ${typing}
Open Google
    [Arguments]        ${browser}    
    Open Browser       https://www.google.com/    ${browser} 

Click Search Button
    Click              xpath=//*[name()="svg" and @class="gb_Te"]
    Click              ${btn_google_search}

Click Blackpink 3rd Link
    Click              ${llb_blackpink_3rd}

Click Loop 3rd Link
    ${googleUrl1}      Get Url
    Click              ${llb_loop_3rd}    
    Get Url     !=     ${googleUrl1}
    Go Back
Click Loop 4th Link
    ${googleUrl1}      Get Url
    Click              ${llb_loop_4th}    
    Get Url     !=     ${googleUrl1}
    Go Back
Click Loop 5th Link
    ${googleUrl1}      Get Url
    Click              ${llb_loop_5th}    
    Get Url     !=     ${googleUrl1}
    Go Back
Click Link 3 4 5 With LoopIndex
    Click              xpath=(//h3[@class='LC20lb MBeuO DKV0Md'])[${INDEX}]

Click Change To English Language
    Click              ${llb_english}

Verify Search
    Wait For Elements State     ${btn_verify_search}    visible
Verify Setting
    Wait For Elements State     ${btn_verify_setting}   visible
Verify Google App 
    Wait For Elements State     ${btn_verify_google_app}    visible
Verify Profile
#    Wait For Elements State     ${btn_verify_profile}    visible



Verify Google Search
    
    Wait For Elements State     ${btn_verify_search}    visible
    Wait For Elements State     ${btn_verify_setting}   visible
    Wait For Elements State     ${btn_verify_google_app}    visible
    Wait For Elements State     ${btn_verify_profile}    visible

    Wait For Elements State     ${llb_help}       visible
    ${get_help}                 Get Text                    ${llb_help}      
    Should Be Equal             ${get_help}                 ${help}

    Wait For Elements State     ${llb_privacy}    visible
    ${get_privacy}              Get Text                    ${llb_privacy} 
    Should Be Equal             ${get_privacy}              ${privacy} 

    Wait For Elements State     ${llb_terms}      visible
    ${get_term}                 Get Text                    ${llb_terms} 
    Should Be Equal             ${get_term}                 ${terms}  

Verify all 
    Verify Search
    Verify Setting
    Verify Google app
    Verify Profile 





