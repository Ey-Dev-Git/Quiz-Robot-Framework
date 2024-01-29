* Settings *
Documentation    Test robot framework
Library    SeleniumLibrary
Suite Setup    Open Browser    http://automationexercise.com   browser=chrome
Suite Teardown      Close Browser


* Variables *
${email}     Testemail00123@gmail.com
${name}    Atithep
${firstname}    Atithep
${lastname}    Kawikul
${company}   I11
${phone}   0987654321
${password}  123456789_Te
${address}  1234
${address2}  1234
${state}  990
${city}  IO
${zipcode}  12345

* Keywords *

Click signupLogin
    Click Element   //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
Input name
    [Arguments]    ${name}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[2]    ${name}
    
Input email
    [Arguments]    ${email}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[3]    ${email}

Click Registration info
    Click Element  //*[@id="form"]/div/div/div[3]/div/form/button

Checked Checkbox Sex
    Click Element    //*[@id="id_gender1"]
    
Input password
    [Arguments]    ${password}
    Input Text     //*[@id="password"]       ${password}

Select day
    Click Element   //*[@id="days"]
    Click Element   //*[@id="days"]/option[2]

Select months
    Click Element   //*[@id="months"]
    Click Element   //*[@id="months"]/option[2]

Select years
    Click Element   //*[@id="years"]
    Click Element   //*[@id="years"]/option[2]

Checked Checkbox 1
    Click Element       //*[@id="newsletter"]

Checked Checkbox 2
    Click Element       //*[@id="optin"]

Input firstname
    [Arguments]    ${firstname}
    Input Text    //*[@id="first_name"]    ${firstname}

Input lastname
    [Arguments]    ${lastname}
    Input Text    //*[@id="last_name"]    ${lastname}

Input company
    [Arguments]    ${company}
    Input Text    //*[@id="company"]    ${company}

Input address1
    [Arguments]    ${address}
    Input Text    //*[@id="address1"]    ${address}

Input address2
    [Arguments]    ${address}
    Input Text    //*[@id="address2"]    ${address2}

Select country
    Click Element   //*[@id="country"]
    Click Element   //*[@id="country"]/option[3]

Input state
    [Arguments]    ${state}
    Input Text    //*[@id="state"]       ${state}

Input city
    [Arguments]    ${city}
    Input Text    //*[@id="city"]       ${city}

Input zipcode
    [Arguments]    ${zipcode}
    Input Text    //*[@id="zipcode"]      ${zipcode}

Input phone
    [Arguments]    ${phone}
    Input Text    //*[@id="mobile_number"]  ${phone}

Click createAccount
    Click Element   //*[@id="form"]/div/div/div/div[1]/form/button

Click continue1
    Click Element   //*[@id="form"]/div/div/div/div/a

Click del
    Click Element   //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

Click continue2
    Click Element   //*[@id="form"]/div/div/div/div/a


* Test Cases *
Register with valid info
    [Documentation]    this test Registration
    Click signupLogin
    Input name    ${firstname}
    Input email    ${email}
    Click Registration info
    Checked Checkbox Sex
    Input password    ${password}
    Select day
    Select months
    Select years
    Checked Checkbox 1
    Checked Checkbox 2
    Input firstname    ${firstname}
    Input lastname    ${lastname}
    Input company    ${company}
    Input address1    ${address}
    Input address2    ${address}
    Select country
    Input state    ${state}
    Input city    ${city}
    Input zipcode    ${zipcode}
    Input phone    ${phone}
    Click createAccount
    Sleep    3s
    Click continue1
    Sleep    3s
    Click del
    Sleep    3s
    Click continue2
    Sleep    3s