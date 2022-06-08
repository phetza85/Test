*** Settings ***
Documentation     An example resource file
Library    Browser
Resource   ../../Resources/Keywords/Keyword.robot
   
*** Test Cases ***
Search_Google_1_1_001 Search robot on google and verify
    Open Google             chromium
    input in search box     robot
    Click Search Button
    Verify all    
    
# Google_Search_1_1_002 Search Blackpink and Click third topic then verify
#     Open Google             firefox
#     input in search box     blackpink
#     Click Search
#     ${googleUrl1}           Get Url
#     Click Blackpink 3rd Link
#     Get Url        !=       ${googleUrl1}

# Google_Search_1_1_003 Search แมว and Click 3rd, 4th, 5th with for loop link then verify
#     [Tags]    loopTag
#     Open Google             chromium
#     Input In Search Box     แมว
#     Click Search Button  
#     ${URL}                  Get Url
#     FOR  ${INDEX}  IN RANGE  3  6        
#         Click              xpath=(//h3[@class='LC20lb MBeuO DKV0Md'])[${INDEX}]
#         Wait Until Network Is Idle    timeout=7s
#         ${URL1}         Get Url    !=         ${URL} 
#         Set Variable    ${URL}     ${URL1}
#         Go Back
#     END   

Search ผงชูรส and Monosodium glutamate with 2 language for 1 testcase
    [Tags]    Sugar    
    Open Google    chromium    
    IF      '${language}' == 'en'
        Click Change To English Language 
    END   
        Input In Search Box       ${MSG}
        Click Search Button  
        Verify Google Search



*** comment ***
# Search ผงชูรส and Monosodium glutamate with 2 language for 1 testcase
#     [Tags]    Sugar    
#     Open Google    firefox
#     Input In Search Box       ${MSG}
#     ${MessageBefore}    Get Text     //input[@class='gLFyf gsfi']
#     Click Search Button           
#     Verify All
#     Get Text     //input[@class='gLFyf gsfi']  ==  ${MessageBefore}


#  Google_Search_1_1_003 Search แมว and Click 3rd, 4th, 5th with for loop link then verify
#     Open Google    chromium
#     Input In Search Box       แมว
#     Click Search Button  
#     ${URL}    Get Url
#     FOR  ${INDEX}  IN RANGE  3  6        
#         Click        xpath=(//h3[@class='LC20lb MBeuO DKV0Md'])[${INDEX}]
#             IF          ${INDEX} == 3
#                 ${URL3}     Get Url     !=     ${URL}
#             ELSE IF     ${INDEX} == 4
#                 ${URL4}     Get Url     !=     ${URL3}
#             ELSE
#                 ${URL5}     Get Url     !=     ${URL4}
#             END
#          Go Back
#     END