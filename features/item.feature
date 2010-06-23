Feature: Manage Items
  In order to make a todo list
  As an user
  I want to create and manage items

Scenario: Creating an item
  Given I have no items
  And I am on the place with them items
  When I follow "New Item"
  And I fill in "Subject" with "Get integration tests working"
  And I press "Create"
  Then I should see "Item was successfully created."
  And I should see "integration tests working"
  And I should see "Booya"
  And I should have 1 item

