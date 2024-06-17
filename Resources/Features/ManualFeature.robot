*** Settings ***
Documentation    Tests about Tracks website...
Resource         ../Steps/ManualSteps.txt
Resource         ../Features/Common.robot
Resource         ../Steps/HomeSteps.txt
Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
Should be able to access "Manual" page
    [Documentation]  Navigation ManualPage
    [Tags]  TC-M

     Given Navigate To Home Page
     When I click on the Manual button
     Then I view the Manual page
