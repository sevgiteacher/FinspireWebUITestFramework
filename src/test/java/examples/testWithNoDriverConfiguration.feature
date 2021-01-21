Feature: Amazon UI Test
  Scenario: Basic test UI

    Given driver 'https://www.amazon.co.uk'
    * waitFor("#twotabsearchtextbox")
    * input("#twotabsearchtextbox", "Karate")
    * delay(3000)
    * click("#nav-search-submit-button")