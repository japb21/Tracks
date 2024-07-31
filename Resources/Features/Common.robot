*** Settings ***
Library  SeleniumLibrary
Library  ../Features/Mylibrary.py

*** Variables ***
${fileDir}=     /Users/jubatist/PycharmProjects/Tracks/Results/


*** Keywords ***

Begin Web Test
    DeleteOldLogFiles    ${fileDir}
    Open Browser    ${aut['url']}    chrome    options=add_argument("--disable-search-engine-choice-screen")
    click element       ${Privacy['AcceptPrivacy']}
    Maximize Browser Window

End Web Test
    close all browsers

