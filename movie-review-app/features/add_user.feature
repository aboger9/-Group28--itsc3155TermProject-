Feature: Add a new user entry
  
  As as user
  So that I can write movie reviews
  I want to make a user account
  
Scenario: As a user I want to be able to navigate from the listing users to the new user form
  Given I am on the Listing Users page
  When I click on the "New user" link
  Then I should be on the "New User" page
  And I should see the "Email" field
  And I should see the "Username" field
  And I should see the "Password" field
