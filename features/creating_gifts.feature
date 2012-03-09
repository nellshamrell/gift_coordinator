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
    And I should be on the gift page for <Name>
    And I should see <Name> 
 
  Examples: Creating gifts successfully
    | Name      | Outcome                     |
    | "Toaster" | see "Gift has been created" | 

  Scenario Outline: Creating a gift unsuccessfully
    And I click the "Create Gift" button
    Then I should <Outcome>

   Examples: Creating gifts unsuccessfully
     | Name       | Outcome                     |
     | ""         | see "Name can't be blank"   | 
     
