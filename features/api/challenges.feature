@challenge_logic_test
Feature: Test Challenges

  Scenario: Check if a number is prime
    Given the number 7
    When I check if the number is prime
    Then the result should be "true"

  Scenario: Sort a string alphabetically
    Given the string "perro gato casa"
    When I sort the string alphabetically
    Then the sorted string should be "casa gato perro"

  Scenario: Check if a string is a palindrome
    Given the string "radar"
    When I check if the string is a palindrome
    Then the palindrome result should be "true"
  
  Scenario: Check if a string is a palindrome
    Given the string "hola"
    When I check if the string is a palindrome
    Then the palindrome result should be "false"

  Scenario: Generate Fibonacci sequence
    Given the number of Fibonacci terms 5
    When I generate the Fibonacci sequence
    Then the Fibonacci sequence should be "0, 1, 1, 2, 3"

  Scenario: Find two numbers that sum to a target
    Given the list "1, 2, 3, 4, 5" and the target 9
    When I find the two numbers that sum to the target
    Then the result pair should be "4, 5"