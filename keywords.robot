*** Setting ***
Library    Selenium2Library
Library    noStringsAttached    

*** Keywords ***
Open Site With BasicAuth
   [Arguments]    ${url}    ${login}    ${pass}    ${browser}
   Open Browser    https://${login}:${pass}@${url}    ${browser}
   Maximize Browser Window
   
Check if string exists in HTML source
    [Arguments]    ${HTMLsource}    ${keyword}
    ${HTMLsource}=    Get Source
    ${keyword}=    Check Matching String  ${HTMLsource}  ${keyword}
    Run Keyword And Continue On Failure    Should Be True    ${keyword}
