Feature: view all featured petitions
  In order to know what's the most important petitions in the moment
  As a visitor
  I want to view all featured petitions

  Scenario: when there is at least three featured petitions
    Given there is 3 featured petitions
    When I am in "the homepage"
    Then I should see 3 featured petitions
