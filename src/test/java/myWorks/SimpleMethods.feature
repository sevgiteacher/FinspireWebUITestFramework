Feature: UI test with Karate

  Scenario: Learning click method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(2000)
    When click("//input[@id='exp-4']")
#  or  When click("input[id=exp-4]")
#  or  When click('#exp-4')
    And delay(2000)


  Scenario: Learning input method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(2000)
    When input("//input[@name='firstname']","Meryem")
#  or  When input('input[name=firstname]','Meryem')
    And delay(2000)

  Scenario: Learning fullscreen(maximize) and minimize method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(2000)
    And fullscreen()
    # And maximize()
    And delay(2000)
    And minimize()
    And delay(2000)

  Scenario: Learning match method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(2000)
    Then match driver.title == "practice-form"
#    * match driver.text("//label[text()='Favorite Chai']") == "Favorite Chai"
    And delay(2000)


  Scenario: Learning back and forward method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(3000)
    * match driver.title == "practice-form"
    * delay(1000)
    * input("//input[@name='firstname']","Jo")
    * delay(2000)
    * click("//button[@class='btn btn-info']")
    * delay(2000)
    * match driver.title == "Welcome"
    * back()
    * delay(2000)
    * match driver.title == "practice-form"
    * delay(2000)
    * forward()
    * delay(2000)
    * match driver.title == "Welcome"


  Scenario: Learning refresh method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(3000)
    When click('#exp-4')
    And delay(2000)
    And input("//input[@name='firstname']","Lora")
    And delay(2000)
    Then refresh()
    And delay(4000)


  Scenario: Learning drop dawn method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(3000)
    * fullscreen()
    * delay(2000)
#    * select('select[id=continents]', 'Europe')
    * select('select[id=continents]', 4)
    * delay(2000)


  Scenario: Learning scroll method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(3000)
    * scroll("//select[@id='selenium_commands']")
    * delay(2000)


  Scenario: Learning screenshot method
    Given driver "http://www.practiceselenium.com/practice-form.html"
    And delay(3000)
    * fullscreen()
    * input("//input[@name='firstname']","Sue")
    * delay(1000)
    * click("#sex-1")
    * delay(1000)
    * click("#exp-2")
    * delay(1000)
    * click('#tea1')
    * delay(1000)
    * screenshot()
    * delay(3000)


