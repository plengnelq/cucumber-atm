Feature: deposit
  As a customer
  I want to deposit into my account using ATM

  Background:
    Given a customer with id 1 and pin 111 with balance 500 exists
    And I login to ATM with id 1 and pin 111

  Scenario: deposit amount more than balance
    When I deposit 100 into ATM
    Then my account balance is 600
