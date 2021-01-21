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