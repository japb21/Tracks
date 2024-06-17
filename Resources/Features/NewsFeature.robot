*** Settings ***
Documentation    Tests about Tracks website...
Resource         ../Steps/NewsSteps.txt
Resource         ../Features/Common.robot
Resource         ../Steps/HomeSteps.txt
Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
Should be able to access "News" page
    [Documentation]  Open News Page, the user as acces to the webpage
    [Tags]  TC-NN1

     Given Navigate To Home Page
     When I click on the News button
     Then I view the News page

Open Specific link in News
    [Documentation]  Open comments link in News Page
    [Tags]   TC-NN1.1

     Given Navigate To Home Page
     When I click on the News button
     And I click on the COMMENT link
     Then I get redirected to the Comment section

