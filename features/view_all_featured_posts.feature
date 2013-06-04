Feature: view all featured posts
  In order to read the most important posts
  As a visitor
  I want to view all featured posts

  Scenario: when there is at least three featured posts
    Given there is 3 featured posts
    When I am in "the homepage"
    Then I should see 3 featured posts
