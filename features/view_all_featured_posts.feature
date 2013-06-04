Feature: view all featured posts
  In order to read the most important posts
  As a visitor
  I want to view all featured posts

  Scenario: when there is three featured posts
    Given there is 3 featured posts
    When I am in "the homepage"
    Then I should see 3 featured posts

  @javascript
  Scenario: when there is six featured posts
    Given there is 6 featured posts
    When I am in "the homepage"
    Then I should see 3 featured posts
    When I click in see more posts
    Then I should see 6 featured posts
    When I click in see more posts
    Then I should not see the 'see more posts' button anymore
  
  @javascript
  Scenario: when there is more than six posts
    Given there is 9 featured posts
    When I am in "the homepage"
    Then I should see 3 featured posts
    When I click in see more posts
    Then I should see 6 featured posts
    When I click in see more posts
    Then I should see 9 featured posts
    When I click in see more posts
    Then I should not see the 'see more posts' button anymore
