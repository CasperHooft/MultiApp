*** Settings ***
Documentation    Testing Back Office
Resource    ../../Data/InputData.robot
Resource    ../../Resources/Common/Common.robot
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Test Setup          Common.Begin web test
Test Teardown       Common.End web test

#Simply run tests
#robot -d results tests/BackOffice/Back_Office.robot

*** Test Cases ***
Select Team from TopNav
    [Documentation]    vertify landing page is working
    [Tags]  Smoke
    log    Executing Test 1 "vertify landing page is working"
    Backofficeapp.should be able to acces back office