Feature: Signing up
  In order to create an account to interact with the app
  As a user
  I want to be able to sign up

  Scenario Outline: Signing up
    Given I am on the home page
    And I click the "Sign up" link
    And I fill in "Email" with <Email>
    And I fill in "Password" with <Password>
    And I fill in "Password confirmation" with <Password_conf>
    And I click the "Sign up" button
    Then I should <Outcome> 

  Examples: Signing up successfully
    | Email            | Password   | Password_conf | Outcome    |
    | "user@gmail.com" | "password" | "password"    | see "You have signed up successfully." |
