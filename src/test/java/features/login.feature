Feature: Login page

  Scenario: The user logins to the page

    Given driver 'https://finspire.invisionapp.com/'
    * maximize()
    * delay(5000)
    * click("#onetrust-accept-btn-handler")
    * switchFrame(0)
    * input("#signin_email", "sehribanbanu@gmail.com")
    * delay(2000)
    * input("#signin_password", "123456")
    * delay(3000)
    * submit().click('{button}Sign in')


  Scenario: The user sign in to the page
    Given driver 'https://finspire.invisionapp.com/'
    * delay(2000)
    * fullscreen()
    * delay(3000)
    * click("#onetrust-accept-btn-handler")
    * delay(2000)
    * switchFrame(0)
    * input("#signin_email","abc@gmail.com")
    * delay(2000)
    * input("#signin_password","123456")
    * delay(3000)
    * waitFor('{^div}That format')
    * click('{button}Sign in')
    * delay(3000)


  Scenario Outline: The user sign in with wrong email
    Given driver 'https://finspire.invisionapp.com/'
    * fullscreen()
    * delay(5000)
    * click("#onetrust-accept-btn-handler")
    * delay(2000)
    * switchFrame(0)
    * input("#signin_email", "<email>")
    * delay(2000)
    * input("#signin_password", "12345")
    * delay(3000)
    * waitFor('{^div}That format')
#    * match driver.text('{^div}That format') == 'That format doesn't look right. Make sure there aren't any typos.'
    * delay(2000)

    Examples:
      | email         |
      | @gmail.com    |
      | abc@com       |
      | abc@gmail.c   |
      | abc/gmail.com |


  Scenario: The user sign in with incorrect email or password or both
    Given driver 'https://finspire.invisionapp.com/'
    * delay(2000)
    * fullscreen()
    * delay(5000)
    * click("#onetrust-accept-btn-handler")
    * delay(2000)
    * switchFrame(0)
    * input("#signin_email","abc@gmail.com")
    * delay(2000)
    * input("#signin_password","123456")
    * delay(3000)
    * click('{button}Sign in')
    * delay(3000)
    * waitFor('{}You entered an incorrect email, password, or both.')
    * delay(2000)

  Scenario: The user sign in with invalid password
    Given driver 'https://finspire.invisionapp.com/'
    * delay(2000)
    * fullscreen()
    * delay(5000)
    * click("#onetrust-accept-btn-handler")
    * delay(2000)
    * switchFrame(0)
#    * waitFor("#signin_email")
    * input("#signin_email","abc@gmail.com")
    * delay(2000)
    * input("#signin_password","")
    * delay(3000)
    * click('{button}Sign in')
    * delay(3000)
    * waitFor('{^div}One of your')
#    * match driver.text('{^div}One of your') == 'One of your fields is invalid. Please try again or contact customer support.'
    * delay(2000)


  Scenario: If the user forget password-1
    Given driver 'https://finspire.invisionapp.com/'
    * delay(2000)
    * fullscreen()
    * delay(5000)
    * click("#onetrust-accept-btn-handler")
    * delay(2000)
    * switchFrame(0)
    * input("#signin_email","abc@gmail.com")
    * delay(2000)
    * click('{button}Forgot your password?')
    * delay(2000)
    * waitFor('{h1}Forgot your password?')
    * delay(3000)
    * click('{}Back')
    * delay(2000)

  Scenario: If the user forget password-2
    Given driver 'https://finspire.invisionapp.com/'
    * delay(2000)
    * fullscreen()
    * delay(5000)
    * click("#onetrust-accept-btn-handler")
    * delay(2000)
    * switchFrame(0)
    * input("#signin_email","abc@gmail.com")
    * delay(2000)
    * click('{button}Forgot your password?')
    * delay(2000)
    * waitFor('{h1}Forgot your password?')
    * delay(2000)
    * input('#request_email', 'abc@gmail.com')
    * delay(2000)
    * click('{button}Reset password')
    * delay(2000)
    * waitFor('{^div}If you have')
    * delay(2000)


  Scenario: The user sign in to the page with enabled button
    Given driver 'https://finspire.invisionapp.com/'
    * delay(2000)
    * fullscreen()
    * delay(3000)
    * click("#onetrust-accept-btn-handler")
    * delay(2000)
    * switchFrame(0)
    * input("#signin_email","")
    * delay(2000)
    * input("#signin_password","123456")
    * delay(2000)
    * match enabled('{button}Sign in') == false
    * delay(2000)

  Scenario: The user sign in create interest plan
    Given driver 'https://fe-admin-web.test.finspire.tech/'
    * delay(2000)
    * fullscreen()
    * delay(2000)
    * input('#email', 'test2@test.com')
    * delay(1000)
    * input('#password', 'Test135!')
    * delay(1000)
    * click('#SignIn')
    * delay(3000)
    * waitFor("//a[text()='Interest plan definitions']")
    * click("//a[text()='Interest plan definitions']")
    * delay(3000)
    * click("//span[text()='Create interest plan']")
    * delay(3000)
    * input("#ratePlanName", "Test")
    * delay(2000)
    * click('#currency0')
    * delay(3000)
    * input("#indexRateKey", "High Risk (GBP)")
    * delay(2000)
    * click("//li[text()='High Risk (GBP)']")
    * delay(2000)
    * input("#effectiveDate", "12102021")
    * delay(2000)



