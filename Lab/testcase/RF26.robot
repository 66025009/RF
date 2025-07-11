*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://automationexercise.com/    chrome
Suite Teardown    Close Browser

*** Variables ***
${USERNAME}      test@com

*** Test Cases ***
Test Scroll Page
    Verify Home Page Is Visible
    Scroll Down To Bottom
    Verify Subscription Section Is Visible
    Scroll Up To Top
    Verify Page Scrolled Up

*** Keywords ***
Verify Home Page Is Visible
    Wait Until Page Contains    Home
    Page Should Contain Element    //a[contains(text(),'Home')]

Scroll Down To Bottom
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

Verify Subscription Section Is Visible
    Input Text    //*[@id="susbscribe_email"]    ${USERNAME}
    Page Should Contain Element    //*[@id="susbscribe_email"]

Scroll Up To Top
    Execute JavaScript    window.scrollTo(0, 0)

Verify Page Scrolled Up
   Wait Until Page Contains     Full-Fledged practice website for Automation Engineers