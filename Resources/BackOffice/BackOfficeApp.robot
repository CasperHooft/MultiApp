*** Settings ***
Resource    ./PO/BackOffice.LandingPage.robot
Resource    ./PO/TopNav.robot

*** Keywords ***
Should be able to acces back office
    BackOffice.LandingPage.GoToLandingPage
    BackOffice.LandingPage.Verify page loaded