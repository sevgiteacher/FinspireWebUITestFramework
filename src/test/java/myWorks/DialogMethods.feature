Feature: UI test with Karate

  Scenario: Learning dialog method for alert boxes
    Given driver "http://demo.automationtesting.in/Alerts.html"
    * delay(2000)
    * fullscreen()
    * click("//button[@class='btn btn-danger']")
    * delay(2000)
    * match driver.dialog == 'I am an alert box!'
    * dialog(true)
    * delay(2000)


  Scenario: Learning dialog method for confirm boxes
    Given driver "http://demo.automationtesting.in/Alerts.html"
    * delay(2000)
    * fullscreen()
    * click("//a[text()='Alert with OK & Cancel ']")
    * delay(2000)
    * click("//button[@class='btn btn-primary']")
    * delay(2000)
    * match driver.dialog == 'Press a Button !'
    * dialog(false)
    * delay(2000)
    * text("//p[@id='demo']") == 'You Pressed Cancel'
    * delay(3000)
    * click("//button[@class='btn btn-primary']")
    * delay(2000)
    * match driver.dialog == 'Press a Button !'
    * dialog(true)
    * delay(2000)
    * text("//p[@id='demo']") == 'You pressed Ok'
    * delay(3000)


  Scenario: Learning dialog method for text boxes
    Given driver "http://demo.automationtesting.in/Alerts.html"
    * delay(2000)
    * fullscreen()
    * click("//a[text()='Alert with Textbox ']")
    * delay(2000)
    * click("//button[@class='btn btn-info']")
    * delay(2000)
    * dialog(true,'Roger')
    * delay(3000)
    * text("//p[@id='demo1']") == 'Hello Roger How are you today'
    * delay(3000)