*** Settings ***
Documentation    Tests about Tracks website...
Resource         ../Steps/ContributeSteps.txt
Resource         ../Features/Common.robot
Resource         ../Steps/HomeSteps.txt

Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
Should be able to access "Contribute" page
    [Documentation]    Displaying Contribute page content, Assuming that the user is on the homepage
    [Tags]  TC-C

     Given Navigate To Home Page
     When I click on the Contribute page
     Then I view the Contribute page
git

Testing internal links on Contribute page
    [Documentation]     Testing the links in Contribute page dont go to other link
    [Tags]  TC-C1

     Given Navigate To Home Page
     And I click on the Contribute page
     When I clicked the link “Matrix”
     Then The link redirect to Matrix page
     And I dont get redirected to the News page


Testing link on Contribute page
    [Documentation]  the link in Contribute page should work
    [Tags]  TC-C2

     Given Navigate To Home Page
     And I click on the Contribute page
     When I clicked the link “Matrix”
     Then The link redirect to Matrix page


