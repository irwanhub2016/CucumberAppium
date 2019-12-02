Feature: This is a test feature for Appium

  Scenario: User should be able to login successfully
    Given is on the main screen
    When user skip the main screen
    And user access the login page
    And user login with valid email dan password
    # Then user verify login success
