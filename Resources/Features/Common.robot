*** Settings ***
Library  SeleniumLibrary
Library  ../Features/Mylibrary.py

*** Variables ***
${fileDir}=     /Users/jubatist/PycharmProjects/Tracks/Results/


*** Keywords ***
Begin Web Test
    DeleteOldLogFiles   ${fileDir}
    Open Browser  ${aut['url']}  chrome
    Maximize Browser Window


End Web Test
    close all browsers


