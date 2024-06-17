*** Settings ***
Documentation    Tests about Tracks website...
Resource         ../Steps/DownloadSteps.txt
Resource         ../Features/Common.robot
Resource         ../Steps/HomeSteps.txt
Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
Should be able to access "Download" page
    [Documentation]  Navigation Download
    [Tags]  TC-D

     Given Navigate To Home Page
     When I click on the Download page
     Then I view the Download page



Latest Download of the app
    [Documentation]  Trying to download the latest version
    [Tags]  TC-D1

    Given Navigate To Home Page
    And I click on the Download page
    When I click on the latest version of the app
    Then I get the latest version
    And I dont get redirected to the Matrix link





