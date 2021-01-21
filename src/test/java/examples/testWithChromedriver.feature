Feature: Karate UI automation
  Scenario: Chromedriver test

    * configure driver = {type: 'chromedriver', executable: 'chromedriver'}
    Given driver 'https://www.amazon.co.uk'
    Then maximize()
    * delay(2000)