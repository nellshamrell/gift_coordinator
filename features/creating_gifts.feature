Feature: Creating gifts
  In order to have gifts to flag
  As a user
  I want to create them

  Background: 
    Given I am on the home page
    And I click the "New Gift" link

  Scenario Outline: Creating a gift
    When I fill in "Name" with <Name>
    And I click the "Create Gift" button
    Then I should <Outcome>
 
Examples: Creating gifts successfully
   | Name      | Outcome                               |
   | "Toaster" | see "Gift has been created"           | 
