Feature: Deleting gifts
  In order to remove unnecessary gifts
  I want to make them disappear

  Scenario Outline: Deleting a gift
    Given there is a Gift
    When I visit the page for the Gift
    And I click the "Delete Gift" link
    Then I should <Outcome>
    Then I should not see <Name>

  Examples: Deleting a gift
  | Name      | Outcome                     |
  | "Toaster" | see "Gift has been deleted" |

    
