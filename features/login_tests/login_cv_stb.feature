Feature: Login CV STB valid serialnumber

  Scenario: User logs in with a valid CV STB serial number
    Given the user is on the login page
    When the user enters a valid CV STB serial number "CVSTB123456"
    And the user clicks the login button
    Then the user should be redirected to the dashboard page
    And a welcome message should be displayed