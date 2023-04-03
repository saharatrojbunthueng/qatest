*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://the-internet.herokuapp.com/

*** Test Cases ***
TC_01
    [Documentation]    Test Click File Upload
    Open Browser	${url}     Chrome
    Click Element    xpath=//a[@href="/upload"]
    Sleep    5
    Location Should Be    https://the-internet.herokuapp.com/upload
    # Click Element    xpath=//input[@id="file-upload"]
    Close Browser
TC_02
    [Documentation]    Test Click Multiple Windows
    Open Browser	${url}     Chrome
    Click Element    xpath=//a[@href="/windows"]
    Click Element    xpath=//a[@href="/windows/new"]
    Sleep    5
    Location Should Be    https://the-internet.herokuapp.com/windows
    Close Browser
TC_03
    [Documentation]    Test Click Sortable Data Tables
    Open Browser	${url}     Chrome
    Click Element    xpath=//a[@href="/tables"]
    Location Should Be    https://the-internet.herokuapp.com/tables
    Sleep    5
    Close Browser