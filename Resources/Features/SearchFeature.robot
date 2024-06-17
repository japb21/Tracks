*** Settings ***
Documentation    Tests about Tracks website...
Resource         ../Steps/SearchSteps.txt
Resource         ../Features/Common.robot
Resource         ../Steps/HomeSteps.txt
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Test Cases ***
Should be able to access "Search" bar
    [Documentation]  Displaying Search bar
    [Tags]  TC-SB

     Given Navigate To Home Page
     When I click on the Search bar
     Then I view the Search bar


Make a search in Search bar
    [Documentation]  Searching 'banana'
    [Tags]  TC-SB1

     Given Navigate To Home Page
     When I click on the Search bar
     And I input text "banana" into the search bar
     Then the search results page is displayed with a error