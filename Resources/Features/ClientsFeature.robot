*** Settings ***
Documentation    Tests about Tracks website...
Resource         ../Steps/ClientsSteps.txt
Resource         ../Steps/HomeSteps.txt
Resource         ../Features/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Test Cases ***
Should be able to access "Clients" page
    [Documentation]  Displaying Clients page content
    [Tags]  TC-CL

     Given Navigate To Home Page
     When I click on the Clients page
     Then I view the Clients page



Verify Clients Link funcionality and potential webpage match
    [Documentation]  Verify source code Link match adn i wont get redirected to the 'News' page
    [Tags]  TC-CL1

     Given Navigate To Home Page
     And I click on the Clients page
     When I click the source code link
     Then I get redirected to the git repo
     Then I dont get redirected to the News page


Clients Link funcionality and potential webpage match
    [Documentation]  source code Link  match
    [Tags]  TC-CL2

     Given Navigate To Home Page
     And I click on the Clients page
     When I click the source code link
     Then I get redirected to the git repo

