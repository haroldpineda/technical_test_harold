@frontend_test
Feature: Frontend Automation Test

  Scenario: User logs in and verifies dashboard
    Given I am on the login page
    When I log in with valid credentials
    Then I should be redirected to the dashboard
    And I should see exactly 6 transactions in the table
    And I should see a total balance of 350.0
    And I should see a credit available of 17800.0
    And positive values should be in green
    And negative values should be in red
    And I should see exactly 4 values containing January in the date
    And I should see exactly 3 values containing Pending in the transactions
    And Validate the time format of the transactions
