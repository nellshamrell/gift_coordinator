Feature: Editing Gifts
  In order to update gift information
  As a user
  I want to be able to update the gift through my browser

  Background:
    Given there is a Gift
    When I visit the page for the Gift
    And I click the "Edit Gift" link
 
  
  Scenario Outline: Editing a gift successfully
    And I fill in "Name" with <Name>
    And I click the "Update Gift" button
    Then I should <Outcome>
    Then I should be on the gift page for <Name>

  Examples: Editing gifts successfully
    | Name      | Outcome                      |
    | "Toaster" | see "Gift has been updated." |
    
  Scenario Outline: Editing a gift unsuccessfully
    And I fill in "Name" with <Name>
    And I click the "Update Gift" button
    Then I should <Outcome>

    Examples:  Editing gifts unsuccessfully
     | Name      | Outcome                          |
     | ""        | see "Gift has not been updated." |
  

