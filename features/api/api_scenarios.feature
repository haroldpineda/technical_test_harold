@api_test
Feature: API Automation

  Scenario: Create and verify user
    Given I create a user with name "Test User" and job "Automation Engineer"
    And Json Schema: "api_post"
    When I retrieve the user
    And Json Schema: "api_get"
    Then the user name should be the same
