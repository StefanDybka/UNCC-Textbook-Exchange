Feature: View home page
  
  As a user
  I want to view the homepage
  
  Scenario: As a user I want to view the home page and home page links
    Given I am on the home page
    When I see the "Welcome" page
    And I should see the "Book List" link
    And I should see the "Post Textbook listing" link
    And I should see the "About" link
    And I should see the "Help" link