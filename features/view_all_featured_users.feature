Feature: view all featured users
  In order to know the most interesting users
  As a visitor
  I want to view all featured users

  Scenario: there is 8 featured users
    Given there is 8 featured users
    When I am in "the homepage"
    Then I should see 8 featured users
