*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
GoToLandingPage
    go to   ${BACKOFFICE_URL}

VerifyPageLoaded
    wait until page contains    Dashboard
    log    Landing page test case 1