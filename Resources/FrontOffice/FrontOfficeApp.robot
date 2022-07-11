*** Settings ***
Resource    ./PO/FrontOffice.LandingPage.robot
Resource    ./PO/Team.robot
Resource    ./PO/TopNav.robot

*** Keywords ***
Should be able to acces Front office
    FrontOffice.LandingPage.GoToLandingPage
    FrontOffice.LandingPage.Verify page loaded

Should be able to acces "Team" page
    FrontOffice.LandingPage.GoToLandingPage
    FrontOffice.LandingPage.Verify page loaded
    TopNav.GoToTeamsPage
    team.verifyteampageloaded

"Team" page should match requirements
    FrontOffice.LandingPage.GoToLandingPage
    FrontOffice.LandingPage.Verify page loaded
    TopNav.GoToTeamsPage
    team.verifyteampageloaded