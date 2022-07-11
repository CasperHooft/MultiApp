*** Settings ***
Documentation    EndToEnd suite
Resource    ../../Data/InputData.robot
Resource    ../../Resources/Common/Common.robot
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Test Setup          Common.Begin web test
Test Teardown       Common.End web test

#Simply run tests
#robot -d results tests/EndToEnd/End_to_End.robot

*** Test Cases ***
Should be able to acces front office
    [Tags]  Smoke
    FrontOfficeApp.Should be able to acces Front office
    Backofficeapp.should be able to acces back office

#Should be anle to acces back office
    #[Tags]  Test 2
    #Backofficeapp.should be able to acces back office