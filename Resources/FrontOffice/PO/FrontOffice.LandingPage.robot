*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
GoToLandingPage
    go to   ${FRONTOFFICE_URL}

VerifyPageLoaded
    wait until page contains    Kay Garland
    log    Landing page test case 1