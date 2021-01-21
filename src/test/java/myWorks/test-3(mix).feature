Feature: Karate UI Automation Test
  Background:
    Given driver "http://www.practiceselenium.com/practice-form.html"

  Scenario: use input, click, match
    And delay(3000)
    When input("//input[@name='firstname']","Megan")
    And delay(1000)
    And input("//input[@name='lastname']","Taylor")
    * delay(1000)
    * click("#sex-1")
    * delay(1000)
    * click("#exp-2")
    * delay(1000)
    * click('#tea1')
    * delay(1000)
    * click('#tea2')
    * delay(1000)
    * click('#tool-0')
    * delay(1000)
    * click("//button[@class='btn btn-info']")
    * delay(2000)
    Then match driver.title == "Welcome"
    * delay(1000)



    Scenario: use back, forward, fullscreen, refresh
      * delay(2000)
      * match driver.title == "practice-form"
      * delay(1000)
      * input("//input[@name='firstname']","Jo")
      * delay(1000)
      * click("//button[@class='btn btn-info']")
      * delay(1000)
      * match driver.title == "Welcome"
      * back()
      * delay(1000)
      * match driver.title == "practice-form"
      * delay(1000)
      * forward()
      * delay(1000)
      * match driver.title == "Welcome"
      * fullscreen()
      * delay(1000)
      * refresh()
      * delay(3000)


      Scenario: use drop dawn and scroll methods
        * delay(1000)
        * scroll('select[id=continents]')
        * select('select[id=continents]', 4)
        # or select('select[id=continents]', 'Europe')
        * delay(3000)














