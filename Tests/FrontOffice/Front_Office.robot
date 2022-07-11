*** Settings ***
Documentation    Testing Front Office
Resource    ../../Data/InputData.robot
Resource    ../../Resources/Common/Common.robot
Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Test Setup          Common.Begin web test
Test Teardown       Common.End web test

#Simply run tests
#robot -d results tests/Front_Office.robot
#robot -d results tests/FrontOffice/Front_Office.robot

#Complex run tests (-L Trace gives even more info)
#robot -d results -L debug --reporttitle "RobotFramework Report" --logtitle "RobotFramework Log" --timestampoutputs tests/Front_Office.robot

*** Test Cases ***
Select Team from TopNav
    [Documentation]    vertify landing page is working
    [Tags]  Smoke
    FrontOfficeApp.Should be able to acces Front office

Should be able to acces "Team" page
    [Documentation]    Should be able to acces "Team" page
    [Tags]    UI Test
    FrontOfficeApp.Should be able to acces "Team" page

#"Team" page should match requirements
    #[Documentation]    "Team" page should match requirements
    #[Tags]    Test 3
    #log    Executing Test 3 "Team" page should match requirements
    #FrontOfficeApp."Team" page should match requirements