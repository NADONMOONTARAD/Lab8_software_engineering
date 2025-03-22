*** Settings ***
Resource          resource.robot

*** Test Cases ***

Empty Destination
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Contact person    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phone    081-111-1234    
    Submit Credentials
    Page Should Contain    Please enter your destination.
    [Teardown]    Close Browser

Empty Email
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contact person    Sodsai Sandee
    Input Relationship    Mother
    Input Phone    081-111-1234    
    Submit Credentials
    Page Should Contain    Please enter a valid email address.
    [Teardown]    Close Browser

Invalid Email
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contact person    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@
    Input Phone    081-111-1234    
    Submit Credentials
    Page Should Contain    Please enter a valid email address.
    [Teardown]    Close Browser

Empty Phone Number
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contact person    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com    
    Submit Credentials
    Page Should Contain    Please enter a phone number.
    [Teardown]    Close Browser

Invalid Phone Number
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contact person    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phone    191    
    Submit Credentials
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678.
    [Teardown]    Close Browser