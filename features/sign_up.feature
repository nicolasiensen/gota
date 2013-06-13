Feature: sign up
  In order to have access to more features
  As a visitor
  I want to sign up

  Scenario: when I fill in the sign up form right
    Given I am in "the sign up page"
    And I fill in the sign up form right
    When I submit the sign up form
    Then I should be in "my profile page"

  Scenario: when I fill in the email confirmation wrong
    Given I am in "the sign up page"
    And I fill the email confirmation wrong
    When I submit the sign up form
    Then I should see the email confirmation error
