Feature: UI test with Karate

  Scenario: Learning click and input

    Given driver 'https://www.wilko.com/'
    * delay(5000)
    # eger element id ile bulunduysa basina # isareti konarak direk id si yazilir.
    And click('#onetrust-accept-btn-handler')
    * delay(3000)
    And input('#js-site-search-input','ariel colour')
    * delay(3000)
    When click("//span[@class='glyphicon glyphicon-search']")
    * delay(4000)


  Scenario: Use maximize() and minimize() method
    Given driver 'https://www.wilko.com/'
    * delay(3000)
 #   * driver.maximize()
 #   * delay(3000)
    * fullscreen()
    And waitFor('#onetrust-accept-btn-handler')
    * click('#onetrust-accept-btn-handler')
    * delay(3000)
    # eger element text ile bulunduysa basina {} sonrasinda text yazilir.{} icine tag name yazilir ya da yazilmaz.
    * click("{a}Shop all")
    # or
 #   * click("{}Shop all")
    * delay(3000)
    * minimize()
    * delay(3000)



  Scenario: Use leftOf method
    Given driver 'https://www.wilko.com/'
    * delay(3000)
    And waitFor('#onetrust-accept-btn-handler')
    * click('#onetrust-accept-btn-handler')
    * delay(3000)
    * fullscreen()
    * delay(2000)
    * leftOf('{}Shop all').find('{a}Storage').click()
    * delay(3000)




