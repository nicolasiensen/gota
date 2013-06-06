Feature: sign in
  In order to have access to other features
  As a visitor
  I want to sign in

  @javascript
  Scenario: when I fill the login form correctly
    Given I have an account
    And I am in "the homepage"
    When I click on the login button
    Then I should see the login form
    Given I fill the login form correctly
    When I submit the login form
    Then I should be in "the homepage"
    And I should not see the login button
    And I should see my profile picture
  
  @javascript
  Scenario: when I fill the login form incorrectly
    Given I am in "the homepage"
    And I click on the login button
    And I fill the login form incorrectly
    When I submit the login form
    Then I should be in "the homepage"
    And I should see the login error message
