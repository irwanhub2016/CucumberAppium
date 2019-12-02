Feature: This is a test register feature

  Scenario: User should be able to login successfully
    Given is on the main screen
    When user skip the main screen
    And user access the login page
    And user register a new account
    Then user verify register success
