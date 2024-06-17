*** Settings ***
Documentation    Tests about Tracks website...
Library    SeleniumLibrary
Library    BuiltIn
Library  ../Features/Mylibrary.py

*** Test Cases ***
Should be able to access "News" page
    page should contain
    press key
    input text      ${paginaSearch['Searchtitulo']}    banana       ENTER
    press key        ${paginaSearch['Searchtitulo']}    banana
   should be empty
   should be equal
    should not be equal
    wait until element is not visible
    var
    Validate Elements
    should not be equal
    validate
    wait until element is not visible         xpath=//a[contains(text(),'News')]          5s
    variable should exist
    validate element
    validateelement
    wait until page contains
    close all browsers
    set screenshot directory