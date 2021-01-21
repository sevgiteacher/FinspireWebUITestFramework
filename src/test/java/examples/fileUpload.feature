Feature: Karate UI

  Scenario: File upload
    * configure driver = {type:'chrome'}
    * driver 'http://the-internet.herokuapp.com/upload'
    And waitFor("#file-upload")
    * delay(5000)
    When driver.inputFile("#file-upload", "file:src/test/java/java_white.png")
    * delay(5000)
    And waitFor("//input[@id='file-submit']")
    When click("//input[@id='file-submit']")
    * delay(5000)
    And waitForText("#uploaded-files", "java_white.png")
    * delay(4000)