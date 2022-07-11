*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin web test
    open browser    ${START_URL}   ${BROWSER}
    maximize browser window
    sleep   1s

End web test
    close all browsers

Insert test data
    Insert login name
    Insert login password

Cleanup test data
    log    Cleaning up test data

Insert login name
    log    name=henk

Insert login password
    log    pass=henk