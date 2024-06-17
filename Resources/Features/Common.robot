*** Settings ***
Library  SeleniumLibrary
Library  ../Features/Mylibrary.py

*** Variables ***
${fileDir}=     ./Results/

*** Keywords ***
Begin Web Test
    DeleteOldLogFiles   ${fileDir}
    Open Browser  ${aut['url']}  chrome
    Maximize Browser Window


End Web Test
    close all browsers


