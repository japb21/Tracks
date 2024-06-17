*** Settings ***
Documentation    Tests about Tracks website...
Resource         ../Steps/ScreenshotsSteps.txt
Resource         ../Features/Common.robot
Resource         ../Steps/HomeSteps.txt
Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
Should be able to access "Screenshots" page
    [Documentation]  Displaying Screenshots page content
    [Tags]  TC-S

     Given Navigate To Home Page
     When I click on the Screenshots page
     Then I view the Screenshots page

Verify Screenshot Link and image
    [Documentation]     Dont get redirected to other link
    [Tags]  TC-S1
     Given Navigate to Home Page
     And I click on the Screenshots page
     When I click the Main page link
     Then Main page screenshot appear
     And I dont get redirected to the News page

The Screenshot Link and image match
    [Documentation]  Link and image match
    [Tags]  TC-S2
     Given Navigate to Home Page
     And I click on the Screenshots page
     When I click the Main page link
     Then Main page screenshot appear
