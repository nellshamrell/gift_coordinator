Feature: Viewing gifts
  In order to follow or claim gifts
  As a user
  I want to be able to see a list of gifts

  Scenario Outline: Listing all gifts
    Given there is a Gift
    And I am on the home page
    When I click the <Name> link
    Then I should be on the gift page for <Name> 

  Examples: Gifts to view
    | Name         |
    | "Toaster"    |
    
