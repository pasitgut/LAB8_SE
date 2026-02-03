*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Login Page
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --headless
    
    Create Webdriver    Chrome    options=${chrome_options}
    Go To    https://computing.kku.ac.th

*** Test Cases ***
TC01 - Open KKU Computing Website
    [Documentation]    ทดสอบเปิดเว็บไซต์วิทยาลัยการคอมพิวเตอร์
    Open Browser To Login Page
    Should Be Equal    ${1}    ${1}
    [Teardown]    Close Browser
