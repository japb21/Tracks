*** Settings ***
Library  SeleniumLibrary
Library  ../Features/Mylibrary.py

*** Variables ***
${fileDir}=     /Users/jubatist/PycharmProjects/Tracks/Results/


*** Keywords ***

Begin Web Test
    DeleteOldLogFiles    ${fileDir}
    Open Browser    ${aut['url']}    chrome    options=add_argument("--disable-search-engine-choice-screen")
    Maximize Browser Window
    Wait Until Element Is Visible     ${Privacy['AcceptPrivacy']}
   ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${Privacy['AcceptPrivacy']}
    Run Keyword If    ${is_visible}    Click Element    ${Privacy['AcceptPrivacy']}


End Web Test
    close all browsers


