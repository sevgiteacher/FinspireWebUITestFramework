Feature: UI test with Karate

  Scenario: Learning wild card locators about exact text match
    Given driver 'http://demo.automationtesting.in/Register.html'
    And fullscreen()
    * delay(2000)
    * click("//a[text()='WebTable']")
#    * click('{a}WebTable')
#    * click('{}WebTable')
#    * click('{li/a}WebTable')
    * delay(3000)


  Scenario: Learning wild card locators about partial text match
    Given driver 'http://demo.automationtesting.in/Register.html'
    And fullscreen()
    * delay(2000)
    * click('{^}WebTa')
#    * click('{^a}WebTa')
    * delay(3000)

    #################

  Scenario: Learning friendly locators with rightOf method
    #  black tea nin sagindaki red tea ye tiklanacak.
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And fullscreen()
    * delay(2000)
 #   * rightOf('#tea1').find('input').click()
    * rightOf('#tea1').click()
    * delay(2000)


  Scenario: Learning friendly locators with leftOf method
    #  4 un solundaki 3 e tiklanacak.
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And fullscreen()
    * delay(2000)
#    * leftOf('#exp-3').find('input').click()
    * leftOf('#exp-3').click()
    * delay(2000)


  Scenario: Learning friendly locators with above method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And fullscreen()
    * delay(2000)
    #  Harmless in uzerindeki Break e tiklanacak.
    * above('#tool-1').click()
    * delay(2000)
    #  Red tea nin uzerindeki date bolumune "05.11.2002" yazdirilacak.
    * above('#tea2').input('05.11.2002')
    * delay(2000)


  Scenario: Learning friendly locators with below method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And fullscreen()
    * delay(2000)
    #  Harmless in altindaki One of those things e tiklanacak.
    * below('#tool-1').click()
    * delay(2000)