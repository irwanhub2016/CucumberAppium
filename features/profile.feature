Feature: This is a test profile feature

  Scenario: User should be able to access profile page
    Given is on the main screen
    When user skip the main screen
    And user access the login page
    And user login with valid email dan password
    Then user verify login success
    When user access the profile page
    Then user verify access the profile page success
