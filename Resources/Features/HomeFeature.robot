*** Settings ***
Documentation    Tests about Tracks website...
Resource         ../Steps/HomeSteps.txt
Library  ../Features/Mylibrary.py
Resource         ../Features/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test
Library    SeleniumLibrary    run_on_failure=Nothing

*** Test Cases ***
Should be able to access "Home" page
    [Documentation]  Check visual elements of the home page
    [Tags]  TC-H0
    Given Navigate To Home Page
    When I view the home page
    Then I see the company logo in the header
    And I see the Navbar
    And I see the Sidebar


Navbar to navigate between contents
    [Documentation]    Check visual elements of the Navbar
    [Tags]    TC-H1
    @{Navbar}  create list       ${Navbar['Home']}    ${Navbar['News']}    ${Navbar['Manual']}      ${Navbar['Downloads']}     ${Navbar['Contributes']}    ${Navbar['Screenshots']}        ${Navbar['Clients']}     ${Navbar['Search']}
    Given Navigate To Home Page
    When I see the Navbar
    Then I see the following items in the navigation bar    @{Navbar}


Sidebar with links to other sections
    [Documentation]  Check sidebar links
    [Tags]   TC-H2
    @{Sidebar}    create List      ${Sidebar['Get Tracks']}   ${Sidebar['Github Repos']}    ${Sidebar['Community']}    ${Sidebar['Latest News']}    ${Sidebar['Resources']}
     Given Navigate To Home Page
     When I see the sidebar
     Then I see the following items in the Sidebar    ${Sidebar}



Attempt to home page
    [Documentation]  Check if i get to the home page
    [Tags]   TC-H3

    Given I open the browser
    When I enter the correct url
    Then I view the home page



View information about the app
    [Documentation]  Check if information about the application is on the home page
    [Tags]   TC-H3H

     Given Navigate To Home Page
     When I view the home page
     Then I see information about the app
     And I see Measure your progress
     And I see Getting informed


Check value in the navigation bar
    [Documentation]    Check if 'News' value exists on the Navigation bar
    [Tags]      TC-HN
    ${element} =   set variable    News
    Given Navigate to Home Page
    When I see the Navbar
    Then The Navbar must contain the value     ${element}
